Rails.application.routes.draw do
  root "monsters#index"

  get "monsters" => "monsters#index"
  get 'monsters/new' => "monsters#new"
  get "monsters/:id" => "monsters#show", as: :monster

end
