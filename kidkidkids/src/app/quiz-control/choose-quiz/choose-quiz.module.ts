import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { ChooseQuizPageRoutingModule } from './choose-quiz-routing.module';

import { ChooseQuizPage } from './choose-quiz.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    ChooseQuizPageRoutingModule
  ],
  declarations: [ChooseQuizPage]
})
export class ChooseQuizPageModule {}
