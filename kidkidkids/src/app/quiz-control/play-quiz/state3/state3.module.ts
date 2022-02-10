import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { State3PageRoutingModule } from './state3-routing.module';

import { State3Page } from './state3.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    State3PageRoutingModule
  ],
  declarations: [State3Page]
})
export class State3PageModule {}
