Rails.application.routes.draw do
   get '/cruds/:id' => 'application#show'
  get '/new_crud' => 'application#new'
  get '/create_crud' => 'application#create'
  get '/cruds/:id/edit' => 'application#edit'
  get '/update_crud/:id' => 'application#update'
  get '/cruds/:id/destroy' => 'application#destroy'
  get '/cruds' => 'application#index'
end
