Rails.application.routes.draw do
  root "monsters#index"

  get "monsters" => "monsters#index"
  get "monsters/:id" => "monsters#show", as: :monster

end
