import { NgModule } from '@angular/core';
import { PreloadAllModules, RouterModule, Routes } from '@angular/router';

const routes: Routes = [
  {
    path: 'home',
    loadChildren: () => import('./home/home.module').then( m => m.HomePageModule)
  },
  {
    path: '',
    redirectTo: 'home',
    pathMatch: 'full'
  },
  {
    path: 'all-knowledge',
    loadChildren: () => import('./knowledge-control/all-knowledge/all-knowledge.module').then( m => m.AllKnowledgePageModule)
  },
  {
    path: 'choose-knowledge',
    loadChildren: () => import('./knowledge-control/choose-knowledge/choose-knowledge.module').then( m => m.ChooseKnowledgePageModule)
  },
  {
    path: 'play-knowledge',
    loadChildren: () => import('./knowledge-control/play-knowledge/play-knowledge.module').then( m => m.PlayKnowledgePageModule)
  },
  {
    path: 'all-quiz',
    loadChildren: () => import('./quiz-control/all-quiz/all-quiz.module').then( m => m.AllQuizPageModule)
  },
  {
    path: 'choose-checkpoint',
    loadChildren: () => import('./quiz-control/choose-checkpoint/choose-checkpoint.module').then( m => m.ChooseCheckpointPageModule)
  },
  {
    path: 'main-page',
    loadChildren: () => import('./main-page/main-page.module').then( m => m.MainPagePageModule)
  },
  {
    path: 'state1',
    loadChildren: () => import('./quiz-control/play-quiz/state1/state1.module').then( m => m.State1PageModule)
  },
  {
    path: 'state2',
    loadChildren: () => import('./quiz-control/play-quiz/state2/state2.module').then( m => m.State2PageModule)
  },
  {
    path: 'state3',
    loadChildren: () => import('./quiz-control/play-quiz/state3/state3.module').then( m => m.State3PageModule)
  },
  {
    path: 'state4',
    loadChildren: () => import('./quiz-control/play-quiz/state4/state4.module').then( m => m.State4PageModule)
  },
  {
    path: 'alphabet-category',
    loadChildren: () => import('./knowledge-control/alphabet-category/alphabet-category.module').then( m => m.AlphabetCategoryPageModule)
  },
  {
    path: 'choose-quiz',
    loadChildren: () => import('./quiz-control/choose-quiz/choose-quiz.module').then( m => m.ChooseQuizPageModule)
  },
];

@NgModule({
  imports: [
    RouterModule.forRoot(routes, { preloadingStrategy: PreloadAllModules })
  ],
  exports: [RouterModule]
})
export class AppRoutingModule { }
