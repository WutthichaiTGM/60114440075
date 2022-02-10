import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { IonicModule } from '@ionic/angular';

import { ChooseQuizPage } from './choose-quiz.page';

describe('ChooseQuizPage', () => {
  let component: ChooseQuizPage;
  let fixture: ComponentFixture<ChooseQuizPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ChooseQuizPage ],
      imports: [IonicModule.forRoot()]
    }).compileComponents();

    fixture = TestBed.createComponent(ChooseQuizPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
