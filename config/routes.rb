Rails.application.routes.draw do
  # # 주소로 처음 들어가면, HomeControlelr에서 index 액션에 연결해주세요
  # get '/' => 'home#index'
  # get '/home' => 'home#hi'
  # for Calculator
  get '/' => 'calculator_home#indexCal'
  post '/result' => 'calculator_home#result'
  get 'plus/:num1/:num2' => 'calculator_home#plus'
  # get 'articles/new'
  # get 'articles/create' Removed these get (mappings), since we already defined by calling resources method
  get 'welcome/index'
  resources :articles # mapped to the articles "controller"
end
