class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  devise :database_authenticatable, :recoverable, :rememberable, :validatable

# 去掉 :recoverable 之后路由变化
#   zgl@LAPTOP-9FJ4SQII:/mnt/d/zgl/my_block$ rails routes -g user
#               Prefix Verb   URI Pattern                    Controller#Action
#     new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
#         user_session POST   /users/sign_in(.:format)       devise/sessions#create
# destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
#    new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#   edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#        user_password PATCH  /users/password(.:format)      devise/passwords#update
#                      PUT    /users/password(.:format)      devise/passwords#update
#                      POST   /users/password(.:format)      devise/passwords#create

# zgl@LAPTOP-9FJ4SQII:/mnt/d/zgl/my_block$ rails routes -g user
#                   Prefix Verb   URI Pattern                    Controller#Action
#         new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
#             user_session POST   /users/sign_in(.:format)       devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#            user_password PATCH  /users/password(.:format)      devise/passwords#update
#                          PUT    /users/password(.:format)      devise/passwords#update
#                          POST   /users/password(.:format)      devise/passwords#create
# cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
#    new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
#        user_registration PATCH  /users(.:format)               devise/registrations#update
#                          PUT    /users(.:format)               devise/registrations#update
#                          DELETE /users(.:format)               devise/registrations#destroy
#                          POST   /users(.:for
end
