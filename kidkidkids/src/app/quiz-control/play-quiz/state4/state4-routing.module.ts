import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { State4Page } from './state4.page';

const routes: Routes = [
  {
    path: '',
    component: State4Page
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class State4PageRoutingModule {}
