Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: redirect("/client/index.html")

  scope :admin, module: 'admin' do 
    scope shallow_path: 'index',  controller: 'index' do
      get :login
      post :login
      get :registers
      get :conduct
      get :departure
      get :show
      get :show_departure

      get :destroy_register
      get :destroy_conduct
      get :destroy_departure
      
    end
  end

  resources :index, only: [] do 
    collection do 
      post :register
      post :conduct
      post :departure
    end
    
  end
end
