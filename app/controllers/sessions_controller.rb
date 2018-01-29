class SessionsController < ApplicationController
  def create
    auth = request.env['omniauth.auth']
    user = User.create_from_authdata(auth)
    session[:user_id] = user.id

    redirect_to root_path
  end

  def destroy
    reset_session
    redirect_to root_path
  end

  def delete
    @user = User.find(session[:user_id])
    @user.delete

    redirect_to top_complete_path
  end
end