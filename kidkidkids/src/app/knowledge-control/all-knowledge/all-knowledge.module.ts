import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { AllKnowledgePageRoutingModule } from './all-knowledge-routing.module';

import { AllKnowledgePage } from './all-knowledge.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    AllKnowledgePageRoutingModule
  ],
  declarations: [AllKnowledgePage]
})
export class AllKnowledgePageModule {}
