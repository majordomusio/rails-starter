Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root 'site#index'
  
  devise_for :users, skip: :all
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    post 'login', to: 'devise/sessions#create'
    delete 'logout', to: 'devise/sessions#destroy'
    
    get 'register', to: 'devise/registrations#new'
    post 'register', to: 'devise/registrations#create'
    
    # new_user_session GET    /users/sign_in(.:format)  devise/sessions#new
    # user_session POST   /users/sign_in(.:format) devise/sessions#create
    # destroy_user_session DELETE /users/sign_out(.:format) devise/sessions#destroy
    # new_user_password GET    /users/password/new(.:format) devise/passwords#new
    # edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
    # user_password PATCH  /users/password(.:format) devise/passwords#update
    # PUT    /users/password(.:format) devise/passwords#update
    # POST   /users/password(.:format) devise/passwords#create
    # cancel_user_registration GET    /users/cancel(.:format) devise/registrations#cancel
    # new_user_registration GET    /users/sign_up(.:format) devise/registrations#new
    # edit_user_registration GET    /users/edit(.:format) devise/registrations#edit
    # user_registration PATCH  /users(.:format) devise/registrations#update
    # PUT    /users(.:format) devise/registrations#update
    # DELETE /users(.:format) devise/registrations#destroy
    # POST   /users(.:format) devise/registrations#create
  end
  

  #namespace :api do
  #  resources :users, only: %i[index show create destroy update]
  #end
end
