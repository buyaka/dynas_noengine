Rails.application.routes.draw do
  
  get 'welcome/index'
  get 'welcome/plan'
  get 'welcome/doc'
  get 'welcome/help'

  root 'welcome#index'
end
