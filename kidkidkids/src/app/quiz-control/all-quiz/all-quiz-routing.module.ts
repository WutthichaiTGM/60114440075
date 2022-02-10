import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { AllQuizPage } from './all-quiz.page';

const routes: Routes = [
  {
    path: '',
    component: AllQuizPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class AllQuizPageRoutingModule {}
