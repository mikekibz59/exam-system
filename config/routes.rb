Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :students,:controllers =>{registrations: "registrations"},path: "student"
  devise_for :teachers,:controllers =>{registrations: 'teachers_registrations'},path: "lecturer"
  root 'dashboard#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
