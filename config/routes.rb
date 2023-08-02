Rails.application.routes.draw do
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
