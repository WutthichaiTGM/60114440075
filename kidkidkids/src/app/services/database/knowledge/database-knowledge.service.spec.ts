import { TestBed } from '@angular/core/testing';

import { DatabaseKnowledgeService } from './database-knowledge.service';

describe('DatabaseKnowledgeService', () => {
  let service: DatabaseKnowledgeService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(DatabaseKnowledgeService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
