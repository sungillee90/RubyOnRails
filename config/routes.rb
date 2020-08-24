Rails.application.routes.draw do
  # 주소로 처음 들어가면, HomeControlelr에서 index 액션에 연결해주세
  get '/' => 'home#index'
  get '/home' => 'home#hi'
  # get 'articles/new'
  # get 'articles/create' Removed these get (mappings), since we already defined by calling resources method
  get 'welcome/index'
  resources :articles # mapped to the articles "controller"
end
