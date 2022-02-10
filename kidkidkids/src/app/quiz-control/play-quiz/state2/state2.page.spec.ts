import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { IonicModule } from '@ionic/angular';

import { State2Page } from './state2.page';

describe('State2Page', () => {
  let component: State2Page;
  let fixture: ComponentFixture<State2Page>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ State2Page ],
      imports: [IonicModule.forRoot()]
    }).compileComponents();

    fixture = TestBed.createComponent(State2Page);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
