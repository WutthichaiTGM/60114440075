import { Injectable } from '@angular/core';
import { Platform } from '@ionic/angular';
import { SQLitePorter } from '@ionic-native/sqlite-porter/ngx';
import { HttpClient } from '@angular/common/http';
import { SQLite, SQLiteObject } from '@ionic-native/sqlite/ngx';
import { BehaviorSubject, Observable } from 'rxjs';
import { Dragdrop } from '../../../model/quiz/dragdrop';
import { Listen } from '../../../model/quiz/listen';
import { SortNumber } from '../../../model/quiz/sortNumber';
import { MatchAnimalSound } from '../../../model/quiz/matchAnimalSound';
import { Data } from '../../../model/quiz/data';

@Injectable({
  providedIn: 'root'
})
export class DatabaseQuizService {

  private database: SQLiteObject;
  private dbReady: BehaviorSubject<boolean> = new BehaviorSubject(false);

  lisanimal = new BehaviorSubject([]);
  listhaiAlp = new BehaviorSubject([]);
  lisfruit = new BehaviorSubject([]);
  draganimal = new BehaviorSubject([]);
  dragfruit = new BehaviorSubject([]);
  dragnumber = new BehaviorSubject([]);
  sort_number = new BehaviorSubject([]);
  match_animal_sound = new BehaviorSubject([]);

  data = new BehaviorSubject([]);
  
  random: number;

  constructor(
    private plt: Platform,
    private sqlitePorter: SQLitePorter,
    private sqlite: SQLite,
    private http: HttpClient, 
  ) {
    this.plt.ready().then(() => {
      this.sqlite.create({
        name: 'data.db',
        location: 'default'
        // location: this.fileDir
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
          // this.random = this.random_number();

          // console.log('rnd =', this.random);
          // ฟังเสียงเพื่อตอบคำถาม
          this.loadLisanimals();
          this.loadListThaiAlps();
          this.loadListFruits();
          // ลากวาง
          this.loadDragDropAnimal();
          this.loadDragDropFruit();
          this.loadDragDropNumber();
          // เรียงลำดับตัวเลข
          this.loadSortNumber();
          // จับคู่เสียงของสัตว์
          this.loadMatchAnimalSound();
          
          // ส่วนเก็บคะแนน
          this.loadData();
          this.dbReady.next(true);
        })
        .catch(e => console.error(e));
    });
  }

  getDatabaseState() {
    return this.dbReady.asObservable();
  }

  getLisAnimal(): Observable<Listen[]> {
    return this.lisanimal.asObservable();
  }

  getLisThaiAlp(): Observable<Listen[]> {
    return this.listhaiAlp.asObservable();
  }

  getLisFruit(): Observable<Listen[]> {
    return this.lisfruit.asObservable();
  }

  getDragAnimal(): Observable<Dragdrop[]> {
    return this.draganimal.asObservable();
  }

  getDragFruit(): Observable<Dragdrop[]> {
    return this.dragfruit.asObservable();
  }

  getDragNumber(): Observable<Dragdrop[]> {
    return this.dragnumber.asObservable();
  }

  getSortNumber(): Observable<SortNumber[]> {
    return this.sort_number.asObservable();
  }

  getMatchAnimalSound(): Observable<MatchAnimalSound[]> {
    return this.match_animal_sound.asObservable();
  }

  getData(): Observable<Data[]> {
    return this.data.asObservable();
  }

  random_number() {
    return Math.floor(Math.random() * 2) + 1;
  }

  loadLisanimals() {
    this.random = this.random_number();

    if (this.random == 1) {
      return this.database.executeSql('SELECT * FROM LISTENANIMAL', []).then(data => {
        let lisanimals: Listen[] = [];
        
        if (data.rows.length > 0) {
          for (var i = 0; i < data.rows.length; i++) {
            lisanimals.push({ 
              id: data.rows.item(i).id,
              name_state: data.rows.item(i).name_state,
              state: data.rows.item(i).state,
              category: data.rows.item(i).category,
              alphabet: data.rows.item(i).alphabet, 
              sound: data.rows.item(i).sound,
              answer: data.rows.item(i).answer
            });
          }
        }
        this.lisanimal.next(lisanimals);
      });
    } else if (this.random == 2) {
      return this.database.executeSql('SELECT * FROM LISTENANIMAL_V2', []).then(data => {
        let lisanimals: Listen[] = [];
        
        if (data.rows.length > 0) {
          for (var i = 0; i < data.rows.length; i++) {
            lisanimals.push({ 
              id: data.rows.item(i).id,
              name_state: data.rows.item(i).name_state,
              state: data.rows.item(i).state,
              category: data.rows.item(i).category,
              alphabet: data.rows.item(i).alphabet, 
              sound: data.rows.item(i).sound,
              answer: data.rows.item(i).answer
            });
          }
        }
        this.lisanimal.next(lisanimals);
      });
    }
  }

  loadListThaiAlps() {
    this.random = this.random_number();

    if (this.random == 1) {
      return this.database.executeSql('SELECT * FROM LISTENTHAIALPHABET', []).then(data => {
        let listhaiAlps: Listen[] = [];
        
        if (data.rows.length > 0) {
          for (var i = 0; i < data.rows.length; i++) {
            
            listhaiAlps.push({ 
              id: data.rows.item(i).id,
              name_state: data.rows.item(i).name_state,
              state: data.rows.item(i).state,
              category: data.rows.item(i).category,
              alphabet: data.rows.item(i).alphabet,
              sound: data.rows.item(i).sound, 
              answer: data.rows.item(i).answer
            });
          }
        }
        this.listhaiAlp.next(listhaiAlps);
      });
    } else if (this.random == 2) {
      return this.database.executeSql('SELECT * FROM LISTENTHAIALPHABET_V2', []).then(data => {
        let listhaiAlps: Listen[] = [];
        
        if (data.rows.length > 0) {
          for (var i = 0; i < data.rows.length; i++) {
            
            listhaiAlps.push({ 
              id: data.rows.item(i).id,
              name_state: data.rows.item(i).name_state,
              state: data.rows.item(i).state,
              category: data.rows.item(i).category,
              alphabet: data.rows.item(i).alphabet,
              sound: data.rows.item(i).sound, 
              answer: data.rows.item(i).answer
            });
          }
        }
        this.listhaiAlp.next(listhaiAlps);
      });
    }
  }

  loadListFruits() {
    this.random = this.random_number();

    if (this.random == 1) {
      return this.database.executeSql('SELECT * FROM LISTENFRUIT', []).then(data => {
        let lisfruits: Listen[] = [];
        
        if (data.rows.length > 0) {
          for (var i = 0; i < data.rows.length; i++) {
            
            lisfruits.push({ 
              id: data.rows.item(i).id,
              name_state: data.rows.item(i).name_state,
              state: data.rows.item(i).state,
              category: data.rows.item(i).category,
              alphabet: data.rows.item(i).alphabet, 
              sound: data.rows.item(i).sound,
              answer: data.rows.item(i).answer
            });
          }
        }
        this.lisfruit.next(lisfruits);
      });
    } else if (this.random == 2) {
      return this.database.executeSql('SELECT * FROM LISTENFRUIT_V2', []).then(data => {
        let lisfruits: Listen[] = [];
        
        if (data.rows.length > 0) {
          for (var i = 0; i < data.rows.length; i++) {
            
            lisfruits.push({ 
              id: data.rows.item(i).id,
              name_state: data.rows.item(i).name_state,
              state: data.rows.item(i).state,
              category: data.rows.item(i).category,
              alphabet: data.rows.item(i).alphabet, 
              sound: data.rows.item(i).sound,
              answer: data.rows.item(i).answer
            });
          }
        }
        this.lisfruit.next(lisfruits);
      });
    }
  }

  loadDragDropAnimal() {
    this.random = this.random_number();

    if (this.random == 1) {
      return this.database.executeSql('SELECT * FROM DRAGDROPANIMAL', []).then(data => {
        let draganimal: Dragdrop[] = [];
        
        if (data.rows.length > 0) {
          for (var i = 0; i < data.rows.length; i++) {
            
            draganimal.push({ 
              id: data.rows.item(i).id,
              name_state: data.rows.item(i).name_state,
              state: data.rows.item(i).state,
              category: data.rows.item(i).category,
              alphabet: data.rows.item(i).alphabet, 
              shadow_image: data.rows.item(i).shadow_image,
              answer: data.rows.item(i).answer
            });
          }
        }
        this.draganimal.next(draganimal);
      });
    } else if (this.random == 2) {
      return this.database.executeSql('SELECT * FROM DRAGDROPANIMAL_V2', []).then(data => {
        let draganimal: Dragdrop[] = [];
        
        if (data.rows.length > 0) {
          for (var i = 0; i < data.rows.length; i++) {
            
            draganimal.push({ 
              id: data.rows.item(i).id,
              name_state: data.rows.item(i).name_state,
              state: data.rows.item(i).state,
              category: data.rows.item(i).category,
              alphabet: data.rows.item(i).alphabet, 
              shadow_image: data.rows.item(i).shadow_image,
              answer: data.rows.item(i).answer
            });
          }
        }
        this.draganimal.next(draganimal);
      });
    }
  }

  loadDragDropFruit() {
    this.random = this.random_number();

    if (this.random == 1) {
      return this.database.executeSql('SELECT * FROM DRAGDROPFRUIT', []).then(data => {
        let dragfruit: Dragdrop[] = [];
        
        if (data.rows.length > 0) {
          for (var i = 0; i < data.rows.length; i++) {
            
            dragfruit.push({ 
              id: data.rows.item(i).id,
              name_state: data.rows.item(i).name_state,
              state: data.rows.item(i).state,
              category: data.rows.item(i).category,
              alphabet: data.rows.item(i).alphabet, 
              shadow_image: data.rows.item(i).shadow_image,
              answer: data.rows.item(i).answer
            });
          }
        }
        this.dragfruit.next(dragfruit);
      });
    } else if (this.random == 2) {
      return this.database.executeSql('SELECT * FROM DRAGDROPFRUIT_V2', []).then(data => {
        let dragfruit: Dragdrop[] = [];
        
        if (data.rows.length > 0) {
          for (var i = 0; i < data.rows.length; i++) {
            
            dragfruit.push({ 
              id: data.rows.item(i).id,
              name_state: data.rows.item(i).name_state,
              state: data.rows.item(i).state,
              category: data.rows.item(i).category,
              alphabet: data.rows.item(i).alphabet, 
              shadow_image: data.rows.item(i).shadow_image,
              answer: data.rows.item(i).answer
            });
          }
        }
        this.dragfruit.next(dragfruit);
      });
    }
  }

  loadDragDropNumber() {
    this.random = this.random_number();

    if (this.random == 1) {
      return this.database.executeSql('SELECT * FROM DRAGDROPNUMBER', []).then(data => {
        let dragnumber: Dragdrop[] = [];
        
        if (data.rows.length > 0) {
          for (var i = 0; i < data.rows.length; i++) {
            
            dragnumber.push({ 
              id: data.rows.item(i).id,
              name_state: data.rows.item(i).name_state,
              state: data.rows.item(i).state,
              category: data.rows.item(i).category,
              alphabet: data.rows.item(i).alphabet, 
              shadow_image: data.rows.item(i).shadow_image,
              answer: data.rows.item(i).answer
            });
          }
        }
        this.dragnumber.next(dragnumber);
      });
    } else if (this.random == 2) {
      return this.database.executeSql('SELECT * FROM DRAGDROPNUMBER_V2', []).then(data => {
        let dragnumber: Dragdrop[] = [];
        
        if (data.rows.length > 0) {
          for (var i = 0; i < data.rows.length; i++) {
            
            dragnumber.push({ 
              id: data.rows.item(i).id,
              name_state: data.rows.item(i).name_state,
              state: data.rows.item(i).state,
              category: data.rows.item(i).category,
              alphabet: data.rows.item(i).alphabet, 
              shadow_image: data.rows.item(i).shadow_image,
              answer: data.rows.item(i).answer
            });
          }
        }
        this.dragnumber.next(dragnumber);
      });
    }
  }

  loadSortNumber() {
    this.random = this.random_number();

    if (this.random == 1) {
      return this.database.executeSql('SELECT * FROM SORTNUMBER', []).then(data => {
        let sort_number: SortNumber[] = [];
  
        if (data.rows.length > 0) {
          for (let i = 0; i < data.rows.length; i++) {
            sort_number.push({
              id: data.rows.item(i).id,
              name_state: data.rows.item(i).name_state,
              state: data.rows.item(i).state,
              alphabet: data.rows.item(i).alphabet,
              answer: data.rows.item(i).answer
            })
            
          }
        }
        this.sort_number.next(sort_number)
      });
    } else if (this.random == 2) {
      return this.database.executeSql('SELECT * FROM SORTNUMBER_V2', []).then(data => {
        let sort_number: SortNumber[] = [];
  
        if (data.rows.length > 0) {
          for (let i = 0; i < data.rows.length; i++) {
            sort_number.push({
              id: data.rows.item(i).id,
              name_state: data.rows.item(i).name_state,
              state: data.rows.item(i).state,
              alphabet: data.rows.item(i).alphabet,
              answer: data.rows.item(i).answer
            })
            
          }
        }
        this.sort_number.next(sort_number)
      });
    }
  }

  loadMatchAnimalSound() {
    this.random = this.random_number()

    if (this.random == 1) {
      return this.database.executeSql('SELECT * FROM MATCHANIMALSOUND', []).then(data => {
        let match_animal_sound: MatchAnimalSound[] = [];
  
        if (data.rows.length > 0) {
          for (let i = 0; i < data.rows.length; i++) {
            match_animal_sound.push({
              id: data.rows.item(i).id,
              name_state: data.rows.item(i).name_state,
              state: data.rows.item(i).state,
              alphabet: data.rows.item(i).alphabet,
              sound: data.rows.item(i).sound,
              answer: data.rows.item(i).answer
            });
          }
        }
        this.match_animal_sound.next(match_animal_sound)
      });
    } else if (this.random == 2) {
      return this.database.executeSql('SELECT * FROM MATCHANIMALSOUND_V2', []).then(data => {
        let match_animal_sound: MatchAnimalSound[] = [];
  
        if (data.rows.length > 0) {
          for (let i = 0; i < data.rows.length; i++) {
            match_animal_sound.push({
              id: data.rows.item(i).id,
              name_state: data.rows.item(i).name_state,
              state: data.rows.item(i).state,
              alphabet: data.rows.item(i).alphabet,
              sound: data.rows.item(i).sound,
              answer: data.rows.item(i).answer
            });
          }
        }
        this.match_animal_sound.next(match_animal_sound)
      });
    }
  }

  // ส่วนเก็บคะแนน
  loadData() {
    return this.database.executeSql('SELECT * FROM DATA', []).then(data => {
      let datas: Data[] = [];
      
      if (data.rows.length > 0) {
        for (var i = 0; i < data.rows.length; i++) {
 
          datas.push({ 
            id: data.rows.item(i).id,
            name_state: data.rows.item(i).name_state,
            category: data.rows.item(i).category,
            score_state1: data.rows.item(i).score_state1,
            score_state2: data.rows.item(i).score_state2,
            score_state3: data.rows.item(i).score_state3,
            score_state4: data.rows.item(i).score_state4,
            total_score: data.rows.item(i).total_score
          });
        }
      }
      this.data.next(datas);
    });
  }

  updateData(id, state, score, total) {
    let data = [score, total];
    return this.database.executeSql(`UPDATE DATA SET ${state} = ?, total_score = ? WHERE id = ${id}`, data).then(data => {
      this.loadData();
    })
  }
}
