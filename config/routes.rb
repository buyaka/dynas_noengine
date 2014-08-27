require 'api_constraints'

Rails.application.routes.draw do
  
  resources :apps

  #namespace :api, defaults: {format: 'json'} do
  #  scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
  #     resources :apps
  #  end
  #  scope module: :v2, constraints: ApiConstraints.new(version: 2) do
  #     resources :apps
  #  end
  #end

  root 'welcome#index'

  get 'dashboard/index'
  get 'dashboard/apps'
  get 'dashboard/resources'
  get 'dashboard/analyses'

  devise_for :members, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }

  get 'welcome/index'
  get 'welcome/plan'
  get 'welcome/doc'
  get 'welcome/help'

end
