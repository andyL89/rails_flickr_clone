class SessionsController < ApplicationController
  # def new
  #   @user = User.new
  # end

  def create
    @user = User.authenticate(params[:email], params[:password])
    if @user.save
      flash[:notice] = "You've signed in."
      session[:user_id] = @user.id
      redirect_to "/"
    else
      flash[:alert] = "There was a problem signing in. Please try again."
      redirect_to new_user_session_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You've signed out."
    redirect_to "/"
  end

end