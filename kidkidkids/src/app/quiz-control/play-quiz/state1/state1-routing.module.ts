import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { State1Page } from './state1.page';

const routes: Routes = [
  {
    path: '',
    component: State1Page
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class State1PageRoutingModule {}
