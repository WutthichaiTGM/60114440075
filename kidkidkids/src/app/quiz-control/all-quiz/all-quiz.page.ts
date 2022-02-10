import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-all-quiz',
  templateUrl: './all-quiz.page.html',
  styleUrls: ['./all-quiz.page.scss'],
})
export class AllQuizPage implements OnInit {

  constructor() { }

  ngOnInit() {
  }

  getQuiz(quiz: string) {
    localStorage.setItem('quiz', quiz);
    localStorage.setItem('category', '');
  }

}
