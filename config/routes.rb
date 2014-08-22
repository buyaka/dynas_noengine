Rails.application.routes.draw do
  
  get 'dashboard/index'

  get 'dashboard/apps'

  get 'dashboard/resources'

  devise_for :members
  get 'welcome/index'
  get 'welcome/plan'
  get 'welcome/doc'
  get 'welcome/help'

  root 'welcome#index'
end
