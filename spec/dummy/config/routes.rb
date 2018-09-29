Rails.application.routes.draw do
  mount Oluprofile::Engine => "/oluprofile"

  get 'my_skills/index'

end
