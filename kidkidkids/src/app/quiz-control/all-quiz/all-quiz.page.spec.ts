import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { IonicModule } from '@ionic/angular';

import { AllQuizPage } from './all-quiz.page';

describe('AllQuizPage', () => {
  let component: AllQuizPage;
  let fixture: ComponentFixture<AllQuizPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AllQuizPage ],
      imports: [IonicModule.forRoot()]
    }).compileComponents();

    fixture = TestBed.createComponent(AllQuizPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
