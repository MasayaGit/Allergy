class RestaurantsController < ApplicationController
  def index
      if session[:user]
        @usr = User.find_by(u_name:session[:user])
      else
        redirect_to login_index_path
      end
      @restaurants = Restaurant.all.order(created_at: 'asc')
  end

    def show
      @usr = User.find_by(u_name:session[:user])
      @restaurant = Restaurant.find(params[:id])
      @allergy = @usr.allergy.split(",")

      # 実際はログイン情報からとる
    end

end
