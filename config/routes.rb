FeedbackForHenri::Application.routes.draw do
  resources :projects do
    resources :answers
  end
  
  namespace :admin do
    resources :projects
  end
  
  root 'welcome#index'
end
