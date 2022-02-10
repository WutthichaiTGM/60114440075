import { Component, OnInit } from '@angular/core';
import { NativeAudio } from '@ionic-native/native-audio/ngx';
import { NavController } from '@ionic/angular';

@Component({
  selector: 'app-play-knowledge',
  templateUrl: './play-knowledge.page.html',
  styleUrls: ['./play-knowledge.page.scss'],
})
export class PlayKnowledgePage implements OnInit {

  show: any;

  constructor(public navCtrl: NavController, private nativeAudio: NativeAudio) {
  }

  ngOnInit() {
    let s = localStorage.getItem('list');
    this.show = JSON.parse(s)

    this.loadSound(this.show.thai_sound, this.show.english_sound);

    if (this.show.name == 'animal') {
      this.nativeAudio.preloadComplex(this.show.specific_sound, this.show.specific_sound, 1, 1, 0).then((res) => {
        console.log('loading ', this.show.specific_sound, res);
        this.nativeAudio.play(this.show.specific_sound).then((res) => {
          console.log('playing animalSound');
          console.log(res);
        }, (err) => {
          console.log('animalSound playing error');
          console.log(err);
        });
      }, (err) => {
        console.log('error');
        console.log(err);
      });
    }
  }

  async loadSound(thai_sound: string, eng_sound: string) {
    await this.nativeAudio.preloadComplex(thai_sound, thai_sound, 1, 1, 0).then((res) => {
      console.log('loading ', thai_sound, res);
    }, (err) => {
      console.log('error');
      console.log(err);
    });

    // load english sound
    await this.nativeAudio.preloadComplex(eng_sound, eng_sound, 1, 1, 0).then((res) => {
      console.log('loading ', eng_sound, res);
    }, (err) => {
      console.log('error');
      console.log(err);
    });
  }

  playThaiSound () {
    this.nativeAudio.play(this.show.thai_sound).then((res) => {
      console.log('playing thai animalSound');
      console.log(res);
    }, (err) => {
      console.log('thai animalSound playing error');
      console.log(err);
    });
  }

  playEngSound () {
    this.nativeAudio.play(this.show.english_sound).then((res) => {
      console.log('playing eng animalSound');
      console.log(res);
    }, (err) => {
      console.log('eng animalSound playing error');
      console.log(err);
    });
  }

  playSpecificSound () {
    if (this.show.name == 'animal') {
      this.nativeAudio.play(this.show.specific_sound).then((res) => {
        console.log('playing animalSound');
        console.log(res);
      }, (err) => {
        console.log('animalSound playing error');
        console.log(err);
      });
    }
  }

  goback() {
    this.navCtrl.pop();
  }

}
