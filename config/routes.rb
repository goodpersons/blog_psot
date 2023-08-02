Rails.application.routes.draw do
  devise_for :users
  #         new_user_session  GET    /users/sign_in(.:format)          devise/sessions#new
  #         user_session      POST   /users/sign_in(.:format)          devise/sessions#create
  #      destroy_user_session DELETE /users/sign_out(.:format)         devise/sessions#destroy
  #         new_user_password GET    /users/password/new(.:format)     devise/passwords#new
  #        edit_user_password GET    /users/password/edit(.:format)    devise/passwords#edit
  #             user_password PATCH  /users/password(.:format)         devise/passwords#update
  #                           PUT    /users/password(.:format)         devise/passwords#update
  #                           POST   /users/password(.:format)         devise/passwords#create
  #  cancel_user_registration GET    /users/cancel(.:format)           devise/registrations#cancel
  #     new_user_registration GET    /users/sign_up(.:format)          devise/registrations#new
  #    edit_user_registration GET    /users/edit(.:format)             devise/registrations#edit
  #         user_registration PATCH  /users(.:format)                  devise/registrations#update
  #                           PUT    /users(.:format)                  devise/registrations#update
  #                           DELETE /users(.:format)                  devise/registrations#destroy
  #                           POST   /users(.:format)                  devise/registra




  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get '/blog_posts/new', to: "blog_posts#new", as: :new_blog_post
  # get '/blog_posts/:id', to: "blog_posts#show", as: :blog_post
  # patch '/blog_posts/:id', to: "blog_posts#update"
  # delete '/blog_posts/:id', to: "blog_posts#destory"
  # get '/blog_posts/:id/edit', to: "blog_posts#edit", as: :edit_blog_post
  # post '/blog_posts', to: "blog_posts#create", as: :blog_posts

  resources :blog_posts
  # blog_posts      GET     /blog_posts(.:format)                blog_posts#index
  #                 POST    /blog_posts(.:format)                blog_posts#create
  # new_blog_post   GET     /blog_posts/new(.:format)            blog_posts#new
  # edit_blog_post  GET     /blog_posts/:id/edit(.:format)       blog_posts#edit
  # blog_post       GET     /blog_posts/:id(.:format)            blog_posts#show
  #                 PATCH   /blog_posts/:id(.:format)            blog_posts#update
  #                 PUT     /blog_posts/:id(.:format)            blog_posts#update
  #                 DELETE  /blog_posts/:id(.:format)            blog_posts#destroy

  root "blog_posts#index"
end
