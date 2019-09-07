class SessionsController < ApplicationController

  def index
  end

  def new
  end

  def create
    # if params :name is nil or empty string, as provided in spec
    if params[:name] == nil || params[:name] == ''
      #copied and pasted over exactly from the spec (otherwise it fails)
      redirect_to controller: 'sessions', action: 'new'
    else 
      #set the session[:name] to submitted params
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
  end
end
