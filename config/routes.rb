Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :static_images
  end
end
