Rails.application.routes.draw do
  resources :memos, only: %i[index show new create edit update destroy]
  root "memos#index"
end
