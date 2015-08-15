Rails.application.routes.draw do
  root to: 'static_pages#home'
  match '/',    to: 'static_pages#home',    via: 'get'
  match '/',    to: 'static_pages#create',    via: 'post'
  get '/propositions/:uri', to: 'propositions#show', via: 'get'
end
