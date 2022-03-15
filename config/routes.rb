Rails.application.routes.draw do
 get '/top' => 'homes#top'
 resources :books
 root 'homes#top'
end