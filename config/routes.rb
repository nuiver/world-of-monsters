Rails.application.routes.draw do
  root "monsters#index"

  get "monsters" => "monsters#index"

  get 'monsters/new' => "monsters#new", as: :new_monster
  post "monsters" => "monsters#create"

  get "monsters/:id/edit" => "monsters#edit", as: :edit_monster
  patch "monsters/:id" => "monsters#update"

  get "monsters/:id" => "monsters#show", as: :monster

end
