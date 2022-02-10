import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { State2PageRoutingModule } from './state2-routing.module';

import { State2Page } from './state2.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    State2PageRoutingModule
  ],
  declarations: [State2Page]
})
export class State2PageModule {}
