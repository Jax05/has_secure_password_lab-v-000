class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(name: params[:name])

    raise user.inspect
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to welcome_index_path
    else
      render :new
    end
  end

  def destroy
    session[:user_id].clear
    redirect_to login_path
  end

end
