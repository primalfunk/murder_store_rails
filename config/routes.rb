Rails.application.routes.draw do
  root 'departments#index'
  
  resources :departments do
    resources :items
  end

  scope 'items/:item_id', as: 'item' do
    resources :testimonials, only: [:new, :create]
  end
end
