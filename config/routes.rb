FeedbackForHenri::Application.routes.draw do
  resources :projects do
    resources :answers
  end
  
  root 'welcome#index'
end
