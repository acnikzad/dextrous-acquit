Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

    get "/articles" => "articles#index"
    get "/articles/:id" => "articles#show"
    post "/articles" => "articles#create"
    put "/articles" => "articles#update"
    patch "/articles/:id" => "articles#update"
    delete "/articles/:id" => "articles#destroy"

end
