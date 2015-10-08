class SessionController < ApplicationController
  def new
  end

  def create
    u = Author.find_by_email(params[:email])
    if u && u.authenticate(params[:password])
      redirect_to surveys_path, notice: 'You have successfully logged in'
      session[:user_id] = u.id
    else
      redirect_to session_new_path, notice: 'Invalid username/password'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to session_new_path, notice: 'You have logged out'
  end
end
