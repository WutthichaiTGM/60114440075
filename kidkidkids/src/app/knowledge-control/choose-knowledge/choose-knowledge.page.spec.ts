import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { IonicModule } from '@ionic/angular';

import { ChooseKnowledgePage } from './choose-knowledge.page';

describe('ChooseKnowledgePage', () => {
  let component: ChooseKnowledgePage;
  let fixture: ComponentFixture<ChooseKnowledgePage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ChooseKnowledgePage ],
      imports: [IonicModule.forRoot()]
    }).compileComponents();

    fixture = TestBed.createComponent(ChooseKnowledgePage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
