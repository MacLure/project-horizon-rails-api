Rails.application.routes.draw do
  match '*path', :controller => 'application', :action => 'handle_options_request', :constraints => {:method => 'OPTIONS'}, via: [:options]

  namespace :admin do
     get '/' => 'dashboard#index'
     post 'admin_token' => 'admin_token#create'
     get 'admin/current' => 'admins#current'
     post 'find_admin' => 'admins#find'



     resources :students
     resources :cohorts
     resources :admins
     resources :assignemnts
     resources :events
     resources :contacts
     resources :companies


   end

   namespace :student do
     get '/' => 'dashboard#index'
     post 'student_token' => 'student_token#create'
     get 'student/current' => 'students#current'
    post 'find_student' => 'students#find'

     resources :students
     resources :cohorts
     resources :events
     resources :assignments

   end
end 
