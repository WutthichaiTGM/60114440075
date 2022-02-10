import { Component, OnInit } from '@angular/core';
import { NavController } from '@ionic/angular';

@Component({
  selector: 'app-alphabet-category',
  templateUrl: './alphabet-category.page.html',
  styleUrls: ['./alphabet-category.page.scss'],
})
export class AlphabetCategoryPage implements OnInit {

  topic: string;

  constructor(public navCtrl: NavController) { }

  ngOnInit() {
  }

  getTopic(topic) {
    this.topic = topic;
    localStorage.setItem('topic', this.topic);
  }

  goback() {
    this.navCtrl.pop();
  }

}
