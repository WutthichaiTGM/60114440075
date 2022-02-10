import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { State2Page } from './state2.page';

const routes: Routes = [
  {
    path: '',
    component: State2Page
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class State2PageRoutingModule {}
