import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { State4PageRoutingModule } from './state4-routing.module';

import { State4Page } from './state4.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    State4PageRoutingModule
  ],
  declarations: [State4Page]
})
export class State4PageModule {}
