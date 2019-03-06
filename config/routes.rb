# frozen_string_literal: true

Rails.application.routes.draw do
  # RESTful routes
  resources :examples, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'

  # Doctor resource routes
  resources :doctors, except: %i[new edit]

  # Author resource routes
  resources :authors, except: %i[new edit]

  # Recipe resource routes
  resources :recipes, except: %i[new edit]

  # Books resource routes
  # resources :books will give you all seven (index, show, update, destroy,
  # create, new. edit)
  # resources :books, exceopt: %i[new edit] all but new, edit
  get '/books' => 'books#index'
  get '/books/:id' => 'books#show'
  post '/books' => 'books#create'
  patch '/books/:id' => 'books#update'
  delete '/books/:id' => 'books#destroy'

  # Patients resource routes
  get '/patients' => 'patients#index'
  get '/patients/:id' => 'patients#show'
  post '/patients' => 'patients#create'
  patch '/patients/:id' => 'patients#update'
  delete '/patients/:id' => 'patients#destroy'

  # Ingredients resource routes
  get '/ingredients' => 'ingredients#index'
  get '/ingredients/:id' => 'ingredients#show'
  post '/ingredients' => 'ingredients#create'
  patch '/ingredients/:id' => 'ingredients#update'
  delete '/ingredients/:id' => 'ingredients#destroy'
end
