Rails.application.routes.draw do
  get 'static_pages/home'
  #root 'application#top'
  root 'static_pages#home'
end
