import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { AllKnowledgePage } from './all-knowledge.page';

const routes: Routes = [
  {
    path: '',
    component: AllKnowledgePage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class AllKnowledgePageRoutingModule {}
