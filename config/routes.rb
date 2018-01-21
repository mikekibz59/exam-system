Rails.application.routes.draw do
  get 'teachers/index'

  get 'students/index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :students,path: 'student',:controllers =>{registrations: "students_registrations"}
  devise_for :teachers,path: "lecturer",:controllers =>{registrations:'teachers_registations'}
  root 'dashboard#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
