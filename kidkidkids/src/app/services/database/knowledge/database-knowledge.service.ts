import { Injectable } from '@angular/core';
import { Platform } from '@ionic/angular';
import { SQLitePorter } from '@ionic-native/sqlite-porter/ngx';
import { HttpClient } from '@angular/common/http';
import { SQLite, SQLiteObject } from '@ionic-native/sqlite/ngx';
import { BehaviorSubject, Observable } from 'rxjs';
import { Knowledge } from '../../../model/knowledge/knowledge';

@Injectable({
  providedIn: 'root'
})
export class DatabaseKnowledgeService {

  private database: SQLiteObject;
  private dbReady: BehaviorSubject<boolean> = new BehaviorSubject(false);
 
  engalps = new BehaviorSubject([]);
  thaialps = new BehaviorSubject([]);
  numbers = new BehaviorSubject([]);
  fruits = new BehaviorSubject([]);
  vehicles = new BehaviorSubject([]);
  animals = new BehaviorSubject([]);


  constructor(
    private plt: Platform,
    private sqlitePorter: SQLitePorter,
    private sqlite: SQLite,
    private http: HttpClient
  ) {
    this.plt.ready().then(() => {
      this.sqlite.create({
        name: 'data.db',
        location: 'default'
      })
      .then((db: SQLiteObject) => {
          this.database = db;
          this.seedDatabase();
      });
    });
  }

  seedDatabase() {
    this.http.get('assets/data/data.sql', { responseType: 'text'})
    .subscribe(sql => {
      this.sqlitePorter.importSqlToDb(this.database, sql)
        .then(_ => {
          this.loadEnglishAlphabets();
          this.loadThaiAlphabets();
          this.loadFruit()
          this.loadAnimal()
          this.loadNumber()
          this.loadVehicle()
          this.dbReady.next(true);
        })
        .catch(e => console.error(e));
    });
  }

  getDatabaseState() {
    return this.dbReady.asObservable();
  }
 
  getEngAlps(): Observable<Knowledge[]> {
    return this.engalps.asObservable();
  }

  getThaiAlps(): Observable<Knowledge[]> {
    return this.thaialps.asObservable();
  }

  getAnimals(): Observable<Knowledge[]> {
    return this.animals.asObservable();
  }

  getFruits(): Observable<Knowledge[]> {
    return this.fruits.asObservable();
  }

  getVehicles(): Observable<Knowledge[]> {
    return this.vehicles.asObservable();
  }

  getNumbers(): Observable<Knowledge[]> {
    return this.numbers.asObservable();
  }

  // แบบความรู้
  loadEnglishAlphabets() {
    return this.database.executeSql('SELECT * FROM ENGLISH_ALPHABET', []).then(data => {
      let alphabets: Knowledge[] = [];
      
      if (data.rows.length > 0) {
        for (var i = 0; i < data.rows.length; i++) {
          alphabets.push({ 
            id: data.rows.item(i).id,
            name: data.rows.item(i).name, 
            alphabet: data.rows.item(i).alphabet, 
            thai_sound: data.rows.item(i).thai_sound,
            english_sound: data.rows.item(i).english_sound,
            specific_sound: data.rows.item(i).specific_sound
          });
        }
      }
      this.engalps.next(alphabets);
    });
  }

  loadThaiAlphabets() {
    return this.database.executeSql('SELECT * FROM THAI_ALPHABET', []).then(data => {
      let alphabets: Knowledge[] = [];

      if (data.rows.length > 0) {
        for (var i = 0; i < data.rows.length; i++) {
          alphabets.push({ 
            id: data.rows.item(i).id,
            name: data.rows.item(i).name, 
            alphabet: data.rows.item(i).alphabet, 
            thai_sound: data.rows.item(i).thai_sound,
            english_sound: data.rows.item(i).english_sound,
            specific_sound: data.rows.item(i).specific_sound
          });
        }
      }
      this.thaialps.next(alphabets);
    });
  }

  loadNumber() {
    return this.database.executeSql('SELECT * FROM NUMBER', []).then(data => {
      let alphabets: Knowledge[] = [];

      if (data.rows.length > 0) {
        for (var i = 0; i < data.rows.length; i++) {
          alphabets.push({ 
            id: data.rows.item(i).id,
            name: data.rows.item(i).name, 
            alphabet: data.rows.item(i).alphabet, 
            thai_sound: data.rows.item(i).thai_sound,
            english_sound: data.rows.item(i).english_sound,
            specific_sound: data.rows.item(i).specific_sound
          });
        }
      }
      this.numbers.next(alphabets);
    });
  }

  loadAnimal() {
    return this.database.executeSql('SELECT * FROM ANIMAL', []).then(data => {
      let alphabets: Knowledge[] = [];

      if (data.rows.length > 0) {
        for (var i = 0; i < data.rows.length; i++) {
          alphabets.push({ 
            id: data.rows.item(i).id,
            name: data.rows.item(i).name, 
            alphabet: data.rows.item(i).alphabet, 
            thai_sound: data.rows.item(i).thai_sound,
            english_sound: data.rows.item(i).english_sound,
            specific_sound: data.rows.item(i).specific_sound
          });
        }
      }
      this.animals.next(alphabets);
    });
  }

  loadFruit() {
    return this.database.executeSql('SELECT * FROM FRUIT', []).then(data => {
      let alphabets: Knowledge[] = [];

      if (data.rows.length > 0) {
        for (var i = 0; i < data.rows.length; i++) {
          alphabets.push({ 
            id: data.rows.item(i).id,
            name: data.rows.item(i).name, 
            alphabet: data.rows.item(i).alphabet, 
            thai_sound: data.rows.item(i).thai_sound,
            english_sound: data.rows.item(i).english_sound,
            specific_sound: data.rows.item(i).specific_sound
          });
        }
      }
      this.fruits.next(alphabets);
    });
  }

  loadVehicle() {
    return this.database.executeSql('SELECT * FROM VEHICLE', []).then(data => {
      let alphabets: Knowledge[] = [];

      if (data.rows.length > 0) {
        for (var i = 0; i < data.rows.length; i++) {
          alphabets.push({ 
            id: data.rows.item(i).id,
            name: data.rows.item(i).name, 
            alphabet: data.rows.item(i).alphabet, 
            thai_sound: data.rows.item(i).thai_sound,
            english_sound: data.rows.item(i).english_sound,
            specific_sound: data.rows.item(i).specific_sound
          });
        }
      }
      this.vehicles.next(alphabets);
    });
  }
}
