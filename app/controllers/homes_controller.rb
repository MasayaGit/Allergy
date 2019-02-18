class HomesController < ApplicationController
  def index
    if session[:user] == nil
      redirect_to login_index_path
    end
  end
end
