class MypageController < ApplicationController
  def index
    if session[:user] == nil
      redirect_to login_index_path
    end
    @user = User.find_by(u_name:session[:user])
  end
end
