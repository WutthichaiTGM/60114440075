import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { IonicModule } from '@ionic/angular';

import { AllKnowledgePage } from './all-knowledge.page';

describe('AllKnowledgePage', () => {
  let component: AllKnowledgePage;
  let fixture: ComponentFixture<AllKnowledgePage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AllKnowledgePage ],
      imports: [IonicModule.forRoot()]
    }).compileComponents();

    fixture = TestBed.createComponent(AllKnowledgePage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
