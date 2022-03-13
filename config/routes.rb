Rails.application.routes.draw do
 get 'homes/top' => 'homes#top'
 resources :books
end