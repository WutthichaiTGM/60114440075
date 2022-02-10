import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { IonicModule } from '@ionic/angular';

import { State4Page } from './state4.page';

describe('State4Page', () => {
  let component: State4Page;
  let fixture: ComponentFixture<State4Page>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ State4Page ],
      imports: [IonicModule.forRoot()]
    }).compileComponents();

    fixture = TestBed.createComponent(State4Page);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
