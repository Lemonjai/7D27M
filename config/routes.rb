Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :works
  resources :projects
  get 'main/about';
  get 'main/contact';
  root 'main#index';
end
