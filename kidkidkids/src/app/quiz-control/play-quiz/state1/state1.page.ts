import { Router } from '@angular/router';
import { Component, OnInit } from '@angular/core';
import { DatabaseQuizService } from 'src/app/services/database/Quiz/database-quiz.service';
import { Dragdrop } from '../../../model/quiz/dragdrop';
import { NativeAudio } from '@ionic-native/native-audio/ngx';

import * as $ from 'jquery'
import 'jquery-ui-dist/jquery-ui';

declare var require: any
(window as any).jQuery = $;
require('jquery-ui-touch-punch');

let correctCards = 0;
let heart_status = 0;
let heart = [
  {id: '1', img: '../../../../assets/img/heart.png'},
  {id: '2', img: '../../../../assets/img/heart.png'},
  {id: '3', img: '../../../../assets/img/heart.png'},
];

@Component({
  selector: 'app-state1',
  templateUrl: './state1.page.html',
  styleUrls: ['./state1.page.scss'],
})
export class State1Page implements OnInit {

  dragdrop: Dragdrop[] = [];
  score: number;
  dataScore: any = [];
  category: string;
  state: string;
  level: string;
  heart: any;
  statusSound: boolean;

  constructor(
    private db: DatabaseQuizService, 
    private route: Router,
    private nativeAudio: NativeAudio) {
  }

  ngOnInit() {

    this.heart = heart;
    this.category = localStorage.getItem('category');
    this.level = localStorage.getItem('state');
    this.dataScore = JSON.parse(localStorage.getItem('score'));
    this.checkScore(this.level, this.dataScore);

    this.nativeAudio.stop('test2').then((res) => {
      console.log('stop test2');
      console.log(res);
    }, (err) => {
      console.log('test2 stop error');
      console.log(err);
    });
    this.statusSound = true;
    localStorage.setItem('statusSound', JSON.stringify(this.statusSound));

    this.db.getDatabaseState().subscribe(ready => {
      if(ready) {
        this.getDataQuiz(this.category);
      }
    });

    this.hideAlert();
  }

  hideAlert() {
    $('#successMessage').hide();
    $('#successMessage').css({
      left: '580px',
      top: '250px',
      width: 0,
      height: 0,
    });

    $('#failMessage').hide();
    $('#failMessage').css({
      left: '580px',
      top: '250px',
      width: 0,
      height: 0,
    });

    this.continueGame();
  }

  continueGame() {
    $('#resetGame').hide();
    $('#resetGame').css({
      left: '580px',
      top: '250px',
      width: 0,
      height: 0,
    });
  }

  getDataQuiz(category: string) {
    if (category == 'สัตว์') {
      this.db.getDragAnimal().subscribe(res => {
        for (let i = 0; i < res.length; i++) {
          if (res[i].state === this.level) {
            this.dragdrop.push(res[i]);
            this.DragDrop(this.dragdrop);
          }
        }
      });
    } else if (category == 'ผลไม้') {
      this.db.getDragFruit().subscribe(res => {
        for (let i = 0; i < res.length; i++) {
          if (res[i].state === this.level) {
            this.dragdrop.push(res[i]);
            this.DragDrop(this.dragdrop);
          }
        }
      });
    } else if (category == 'ตัวเลข') {
      this.db.getDragNumber().subscribe(res => {
        for (let i = 0; i < res.length; i++) {
          if (res[i].state === this.level) {
            this.dragdrop.push(res[i]);
            this.DragDrop(this.dragdrop);
          }
        }
      });
    }
  }

  DragDrop(dragdrop) {
    for (let i = 0; i < 3; i++) {
      heart[i].img = '../../../../assets/img/heart.png';
    }
    
    this.heart = heart;
    this.hideAlert();

    // Reset the game
    correctCards = 0;
    heart_status = 0;
    
    $('#cardPile').html('');
    $('#cardSlots').html('');

    // Create the pile of shuffled cards
    for (var i = 0; i < dragdrop.length; i++) {
      $(`<div style="text-align: center; margin: auto;"><img src="${dragdrop[i].alphabet}" alt="" width="130px"></div>`)
      .data('number', i+1)
      .attr('id', 'card' + dragdrop[i].id)
      .appendTo('#cardPile')
      .draggable({
        stack: '#cardPile div',
        cursor: 'move',
        revert: true,
      });
    }
    // Create the card slots
    for (var i = 0; i < 1; i++) {
      $(`<div class="col-mid" style="margin: auto;"><img src="${dragdrop[i].shadow_image}" alt="" width="130px"></div>`)
        .data('number', dragdrop[i].answer)
        .appendTo('#cardSlots')
        .droppable({
          accept: '#cardPile div',
          hoverClass: 'hovered',
          drop: this.handleCardDrop,
        }
      );
    }
  }

  handleCardDrop(event, ui) {
    var slotNumber = $(this).data('number');
    var cardNumber = ui.draggable.data('number');

    if (slotNumber == cardNumber) {
      ui.draggable.position({ of: $(this), my: 'left top', at: 'left top' });
      ui.draggable.draggable('option', 'revert', false);
      correctCards++;
    }

    if (correctCards == 1) {
      $('#successMessage').show();
      $('#successMessage').animate({
        left: '125px',
        top: '30px',
        width: '500px',
        height: '300px',
        opacity: 1,
      });

      var congrate_sound = new Audio('assets/audio/congrate-sound.mp3');
      congrate_sound.play();
    } else {
      heart[heart_status].img = '../../../../assets/img/heart-border.png',
      heart_status++;
      var wrong_answer = new Audio('assets/audio/wrong-answer.m4a');
      wrong_answer.play();
      if (heart_status == 3) {
        $('#failMessage').show();
        $('#failMessage').animate({
          left: '125px',
          top: '30px',
          width: '500px',
          height: '300px',
          opacity: 1,
        });

        var sad_sound = new Audio('assets/audio/sad-sound.mp3');
        sad_sound.play();
      }
    }
  }

  updateData(id: string, scoreState: string, score: number) {
    let total;
    if (scoreState == 'score_state1') {
      total = score
            + this.dataScore[0].score_state2
            + this.dataScore[0].score_state3
            + this.dataScore[0].score_state4
    } else if (scoreState == 'score_state2') {
      total = this.dataScore[0].score_state1
            + score
            + this.dataScore[0].score_state3
            + this.dataScore[0].score_state4
    } else if (scoreState == 'score_state3') {
      total = this.dataScore[0].score_state1
            + this.dataScore[0].score_state2
            + score
            + this.dataScore[0].score_state4
    } else if (scoreState == 'score_state4') {
      total = this.dataScore[0].score_state1
            + this.dataScore[0].score_state2
            + this.dataScore[0].score_state3
            + score
    }
    

    this.db.updateData(id, scoreState, score, total)
    .then(_ => {
      console.log('update complete!!');
    });
  }

  gotoCheckpoint() {
    let score = 100 - (20*heart_status);
    
    if (score > this.score) {
      this.updateData(this.dataScore[0].id, this.state, score);
    }
    this.route.navigateByUrl('/choose-checkpoint');

    this.playBgSound();
  }

  fail() {
    for (let i = 0; i < 3; i++) {
      heart[i].img = '../../../../assets/img/heart.png';
    }
    this.heart = heart;
    this.route.navigateByUrl('/choose-checkpoint');
    this.playBgSound();
  }

  checkScore(level: string, datascore: any) {
    for (let i = 0; i < datascore.length; i++) {
      if (level == '1') {
        this.score = datascore[i].score_state1
        this.state = 'score_state1';
      } else if (level == '2') {
        this.score = datascore[i].score_state2
        this.state = 'score_state2';
      } else if (level == '3') {
        this.score = datascore[i].score_state3
        this.state = 'score_state3';
      } else if (level == '4') {
        this.score = datascore[i].score_state4
        this.state = 'score_state4';
      } else if (level == '5') {
        this.score = datascore[i].score_state5
        this.state = 'score_state5';
      } else if (level == '6') {
        this.score = datascore[i].score_state6
        this.state = 'score_state6';
      }
    }
  }

  resetGame() {
    $('#resetGame').show();
    $('#resetGame').animate({
      left: '125px',
      top: '30px',
      width: '500px',
      height: '300px',
      opacity: 1,
    });
  }

  playBgSound() {
    this.nativeAudio.loop('test2').then((res) => {
      console.log('playing test2');
      console.log(res);
    }, (err) => {
      console.log('test2 playing error');
      console.log(err);
    });
    this.statusSound = false;
    localStorage.setItem('statusSound', JSON.stringify(this.statusSound));
  }

}
