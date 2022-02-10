import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { IonicModule } from '@ionic/angular';

import { PlayKnowledgePage } from './play-knowledge.page';

describe('PlayKnowledgePage', () => {
  let component: PlayKnowledgePage;
  let fixture: ComponentFixture<PlayKnowledgePage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PlayKnowledgePage ],
      imports: [IonicModule.forRoot()]
    }).compileComponents();

    fixture = TestBed.createComponent(PlayKnowledgePage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
