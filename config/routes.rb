Spree::Core::Engine.routes.draw do
  
  namespace :admin do
    resources :products do
      resources :mp3s
    end
  end
    
end
