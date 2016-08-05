Rails.application.routes.draw do
  root "monsters#index"

  get "monsters" => "monsters#index"

end
