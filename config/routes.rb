Rails.application.routes.draw do
  get 'battle', to: 'battle#index'
  get 'battle/formulas', to: 'battle#formulas'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "battle#index"
end
