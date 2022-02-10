import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { RouteReuseStrategy } from '@angular/router';

import { IonicModule, IonicRouteStrategy } from '@ionic/angular';
import { SplashScreen } from '@ionic-native/splash-screen/ngx';
import { StatusBar } from '@ionic-native/status-bar/ngx';

import { AppComponent } from './app.component';
import { AppRoutingModule } from './app-routing.module';

import { ScreenOrientation } from '@ionic-native/screen-orientation/ngx';

import { NativeAudio } from '@ionic-native/native-audio/ngx';

import { DragulaModule } from 'ng2-dragula';

import { File } from '@ionic-native/file/ngx';

import {SQLite} from '@ionic-native/sqlite/ngx';
import { SQLitePorter } from '@ionic-native/sqlite-porter/ngx';

import { HttpClientModule } from '@angular/common/http';
import { NavigationBar } from '@ionic-native/navigation-bar/ngx';

@NgModule({
  declarations: [AppComponent],
  entryComponents: [],
  imports: [BrowserModule, IonicModule.forRoot(), AppRoutingModule, DragulaModule.forRoot(), HttpClientModule],
  providers: [
    StatusBar,
    SplashScreen,
    ScreenOrientation,
    NativeAudio,
    File,
    SQLite,
    SQLitePorter,
    NavigationBar,
  
    { provide: RouteReuseStrategy, useClass: IonicRouteStrategy }
  ],
  bootstrap: [AppComponent]
})
export class AppModule {}
