Rails.application.routes.draw do

  resources :monsters
  # get "monsters" => "monsters#index"
  #
  # get 'monsters/new' => "monsters#new", as: :new_monster
  # post "monsters" => "monsters#create"
  #
  # get "monsters/:id/edit" => "monsters#edit", as: :edit_monster
  # patch "monsters/:id" => "monsters#update"
  #
  # get "monsters/:id" => "monsters#show", as: :monster
  #
  # delete "monsters/:id" => "monsters#destroy"

  root "monsters#index"

end
