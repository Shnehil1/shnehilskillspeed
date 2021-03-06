Rails.application.routes.draw do
  resources :sales_teams
  resources :courses do
   collection {post :import }
  end
  devise_for :users
  get 'welcome/Home'

  get 'welcome/Courses'

  get 'welcome/How_it_works'

  get 'welcome/Corporates'

  get 'welcome/Blog'

  resources :invoices

  root to: 'welcome#Home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
