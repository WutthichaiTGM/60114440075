import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { PlayKnowledgePage } from './play-knowledge.page';

const routes: Routes = [
  {
    path: '',
    component: PlayKnowledgePage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class PlayKnowledgePageRoutingModule {}
