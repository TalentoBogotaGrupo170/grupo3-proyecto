Rails.application.routes.draw do
  resources :estudiantes
  resources :poblacions
  resources :cursos
  resources :administradors
  resources :puntos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
