import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { State3Page } from './state3.page';

const routes: Routes = [
  {
    path: '',
    component: State3Page
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class State3PageRoutingModule {}
