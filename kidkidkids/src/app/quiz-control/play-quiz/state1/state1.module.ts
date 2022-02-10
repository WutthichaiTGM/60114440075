import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { State1PageRoutingModule } from './state1-routing.module';

import { State1Page } from './state1.page';

import { DragulaModule } from 'ng2-dragula';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    State1PageRoutingModule,
    DragulaModule
  ],
  declarations: [State1Page]
})
export class State1PageModule {}
