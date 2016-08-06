Rails.application.routes.draw do
  root "monsters#index"

  get "monsters" => "monsters#index"
  
  get 'monsters/new' => "monsters#new", as: :new_monster
  post "monsters" => "monsters#create"

  get "monsters/:id" => "monsters#show", as: :monster

end
