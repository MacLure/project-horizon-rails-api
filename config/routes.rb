Rails.application.routes.draw do
  post 'student_token' => 'student_token#create'
  post 'admin_token' => 'admin_token#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
