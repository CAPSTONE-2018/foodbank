class SessionsController < ApplicationController
  def create
  @user = User.find_by_email(params[:session][:email])
  if @user && @user.authenticate(params[:session][:password])
    session[:user_id] = @user.id
    #redirect_to step1_wizard_path
    redirect_to fb_agencies_path
    
  else
    redirect_to '/login'
    flash[:notice]="Unable to login, try again!"
  end 
  end
  def new
  end
  def destroy
    reset_session
    #session[:user_id] = nil
    redirect_to '/login'
  end
end
