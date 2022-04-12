class Admin::ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout 'admin'
  
  before_action :login_required

  def login_required
    if not session[:logined].present?
      flash[:alert] = '请登录后操作!'     
      redirect_to login_path      
    end
  end


  def destroy_register
  	Register.find(params[:id]).destroy
  	redirect_to registers_path
  end

  def destroy_conduct
  	Conduct.find(params[:id]).destroy
  	redirect_to conduct_path
  end

  def destroy_departure
  	Departure.find(params[:id]).destroy
  	redirect_to departure_path
  end
end
