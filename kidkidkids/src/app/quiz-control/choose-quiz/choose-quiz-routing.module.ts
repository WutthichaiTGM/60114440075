import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { ChooseQuizPage } from './choose-quiz.page';

const routes: Routes = [
  {
    path: '',
    component: ChooseQuizPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class ChooseQuizPageRoutingModule {}
