import { Component, OnInit } from '@angular/core';
import { DatabaseKnowledgeService } from '../services/database/knowledge/database-knowledge.service';
import { DatabaseQuizService } from '../services/database/Quiz/database-quiz.service';
import { NativeAudio } from '@ionic-native/native-audio/ngx';
import { Knowledge } from '../model/knowledge/knowledge';
import { Data } from '../model/quiz/data';

import * as $ from 'jquery'
import 'jquery-ui-dist/jquery-ui';

declare var require: any
(window as any).jQuery = $;
require('jquery-ui-touch-punch');

@Component({
  selector: 'app-home',
  templateUrl: 'home.page.html',
  styleUrls: ['home.page.scss'],
})
export class HomePage implements OnInit {

  dataScore: Data[] = []
  dataKnowledge: Knowledge[] = []
  statusSound: boolean;

  x: string;

  constructor(
    private db: DatabaseQuizService,
    private knowdb: DatabaseKnowledgeService,
    private nativeAudio: NativeAudio
  ) {
  }

  ngOnInit() {
    // this.statusSound = false;
    localStorage.setItem('statusSound', JSON.stringify(false));

    this.x = localStorage.getItem('statusSound');
    this.statusSound = JSON.parse(this.x);
    // load audio
    this.loadSound();

    // load data score
    this.loadDataScore();

    // load data knowledge
    this.loadDataKnowledge();
  }

  loadSound() {
    this.nativeAudio.preloadComplex('test2', 'assets/audio/bg_audio.mp3', 1, 1, 0).then((res) => {
      console.log('loading2...');
      console.log(res);
      this.nativeAudio.loop('test2').then((res) => {
        console.log('playing test2');
        console.log(res);
      }, (err) => {
        console.log('test2 playing error');
        console.log(err);
      });
    }, (err) => {
      console.log('error');
      console.log(err);
    });
  }

  turnOnOffSound() {
    if (this.statusSound) {
      console.log('status =', this.statusSound);
      this.nativeAudio.loop('test2').then((res) => {
        console.log('playing test2');
        console.log(res);
      }, (err) => {
        console.log('test2 playing error');
        console.log(err);
      });
      this.statusSound = false;
      localStorage.setItem('statusSound', JSON.stringify(this.statusSound));
    } else {
      console.log('status =', this.statusSound);
      this.nativeAudio.stop('test2').then((res) => {
        console.log('stop test2');
        console.log(res);
      }, (err) => {
        console.log('test2 stop error');
        console.log(err);
      });
      this.statusSound = true;
      localStorage.setItem('statusSound', JSON.stringify(this.statusSound));
    }
  }

  loadDataScore() {
    this.db.getDatabaseState().subscribe(ready => {
      if(ready) {
        this.db.getData().subscribe(data => {
          this.dataScore = data;
        })
      }
    });
  }

  loadDataKnowledge() {
    this.knowdb.getDatabaseState().subscribe(ready => {
      if (ready) {
        this.knowdb.getEngAlps().subscribe(res => {
          this.dataKnowledge = res;
        })
      }
    });
  }
}
