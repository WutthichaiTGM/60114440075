import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { ChooseCheckpointPage } from './choose-checkpoint.page';

const routes: Routes = [
  {
    path: '',
    component: ChooseCheckpointPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class ChooseCheckpointPageRoutingModule {}
