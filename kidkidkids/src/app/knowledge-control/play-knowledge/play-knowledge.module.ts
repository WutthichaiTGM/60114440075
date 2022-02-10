import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { PlayKnowledgePageRoutingModule } from './play-knowledge-routing.module';

import { PlayKnowledgePage } from './play-knowledge.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    PlayKnowledgePageRoutingModule
  ],
  declarations: [PlayKnowledgePage]
})
export class PlayKnowledgePageModule {}
