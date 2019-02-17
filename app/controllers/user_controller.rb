class UserController < ApplicationController

  #ユーザのデータベースから情報を取得
  def index
    @title = "UserProfile"
    @userdata = User.all

    if request.post? then

      if params['inputName'] then
        @name = params['inputName']
      end

      if params['inputPassward'] then
        @passward = params['inputPassward']
      end
  
      @userdata = User.where "u_name = ? and passward = ?",params['inputName'],params['inputPassward']
      
    end

  end

end
