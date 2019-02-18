class LoginController < ApplicationController
  def index

    if request.post? then
      @name = params['inputName']
      @password = params['inputPassword']
      @u = User.find_by(u_name: @name)
      if !(@u.nil?)
        if @password == @u.passward
          redirect_to restaurants_path
        else
          @msg = "パスワードが違います"
        end
      else
        @msg = "該当するユーザーが存在しません"
      end

      # if params['inputName'] then
      #   @name = params['inputName']
      # end
      #
      # if params['inputPassward'] then
      #   @passward = params['inputPassward']
      # end
      #
      # @userdata = User.where "u_name = ? and passward = ?",params['inputName'],params['inputPassward']

    end
  end
end
