Rails.application.routes.draw do
  # get 'articles/new'
  # get 'articles/create' Removed these get (mappings), since we already defined by calling resources method
  get 'welcome/index'
  resources :articles # mapped to the articles "controller"
end
