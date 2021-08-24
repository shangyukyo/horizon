class Admin::IndexController < Admin::ApplicationController
  skip_before_action :login_required, only: [:login]
    
  
  def login   
    if request.post?      
      if params[:username] == 'admin' and params[:password] == '123456'
        session[:logined] = 'yes'   
        redirect_to registers_path and return   
      end
    end
    render layout: false
  end
  

  def show
    @register = Register.find params[:id]
  end
end
