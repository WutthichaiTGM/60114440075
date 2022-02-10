import { TestBed } from '@angular/core/testing';

import { DatabaseQuizService } from './database-quiz.service';

describe('DatabaseQuizService', () => {
  let service: DatabaseQuizService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(DatabaseQuizService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
