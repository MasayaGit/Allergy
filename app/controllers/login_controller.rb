class LoginController < ApplicationController
  def index
    
    if request.post? then
      @name = params['inputName']
      @password = params['inputPassword']
      @u = User.find_by(u_name: @name)
      if !(@u.nil?)
        if @password == @u.passward
          session[:user] = @u.u_name
          redirect_to restaurants_path
        else
          @msg = "パスワードが違います"
        end
      else
        @msg = "該当するユーザーが存在しません"
      end

    end
  end
end
