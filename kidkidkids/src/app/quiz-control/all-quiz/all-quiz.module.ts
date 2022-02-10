import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { AllQuizPageRoutingModule } from './all-quiz-routing.module';

import { AllQuizPage } from './all-quiz.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    AllQuizPageRoutingModule
  ],
  declarations: [AllQuizPage]
})
export class AllQuizPageModule {}
