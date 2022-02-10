import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { IonicModule } from '@ionic/angular';

import { State3Page } from './state3.page';

describe('State3Page', () => {
  let component: State3Page;
  let fixture: ComponentFixture<State3Page>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ State3Page ],
      imports: [IonicModule.forRoot()]
    }).compileComponents();

    fixture = TestBed.createComponent(State3Page);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
