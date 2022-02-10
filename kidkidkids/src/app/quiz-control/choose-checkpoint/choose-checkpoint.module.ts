import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { ChooseCheckpointPageRoutingModule } from './choose-checkpoint-routing.module';

import { ChooseCheckpointPage } from './choose-checkpoint.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    ChooseCheckpointPageRoutingModule
  ],
  declarations: [ChooseCheckpointPage]
})
export class ChooseCheckpointPageModule {}
