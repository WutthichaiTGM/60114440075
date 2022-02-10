import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { ChooseKnowledgePageRoutingModule } from './choose-knowledge-routing.module';

import { ChooseKnowledgePage } from './choose-knowledge.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    ChooseKnowledgePageRoutingModule
  ],
  declarations: [ChooseKnowledgePage]
})
export class ChooseKnowledgePageModule {}
