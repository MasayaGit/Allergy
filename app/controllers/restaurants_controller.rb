class RestaurantsController < ApplicationController
  def index
      @restaurants = Restaurant.all.order(created_at: 'asc')
  end

    def show
      @restaurant = Restaurant.find(params[:id])
      @allergys = User.find(2).allergy
      # @time = Time.now.to_s
      # 実際はログイン情報からとる
    end

end
