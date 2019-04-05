class SessionsController < ApplicationController

  def new
  end

  def create
    raise params[:name].inspect
    user = User.find_by(name: params[:name])

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
