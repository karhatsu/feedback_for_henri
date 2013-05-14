FeedbackForHenri::Application.routes.draw do
  resources :projects
  resources :answers
  
  root 'welcome#index'
end
