Rails.application.routes.draw do

    namespace :v1 do
      resources :articles, only:[:index, :show]
    end


end
