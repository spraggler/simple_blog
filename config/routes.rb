Rails.application.routes.draw do
  root "posts#index"

  resources :posts, except: [:destroy, :edit, :update] do
    resources :comments, except: [:index, :destroy, :edit, :update]
  end
end
