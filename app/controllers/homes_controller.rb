class HomesController < ApplicationController
  def index
    # sessionをリセットする(testでつかう)
    session[:user] = nil
    if session[:user] == nil
      redirect_to login_index_path
    end
  end
end
