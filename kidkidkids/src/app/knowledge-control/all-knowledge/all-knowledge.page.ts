import { Router } from '@angular/router';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-all-knowledge',
  templateUrl: './all-knowledge.page.html',
  styleUrls: ['./all-knowledge.page.scss'],
})
export class AllKnowledgePage implements OnInit {

  topic: string;
  
  constructor(public route: Router) {
  }

  ngOnInit() {
  }

  getTopic(topic) {
    this.topic = topic;
    localStorage.setItem('topic', this.topic);
  }

  goback() {
    this.route.navigate(['main-page'])
  }

}
