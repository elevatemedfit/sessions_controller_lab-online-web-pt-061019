class SessionsController < ApplicationController
  def new
  end

  def create
    if !!params[:name] and params[:name] !=""
      # params[:name].nil? or params[:name].empty?
      redirect_to root_path
    else
    session[:name] = params[:name]
    redirect_to '/'
  end
  end

  def destroy
    session.delete :name
  end
end
