Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: redirect("/client/index.html")

  scope :admin, module: 'admin' do 
    scope shallow_path: 'index',  controller: 'index' do

    end
  end
end
