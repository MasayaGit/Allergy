class RestaurantsController < ApplicationController
  def index
    if session[:user]
      @user = User.find_by(u_name:session[:user])
    else
      redirect_to login_index_path
    end

    @restaurants = Restaurant.all.order(created_at: 'asc')

    @wariai = []
    @percentage = []

    @restaurants.each do |restaurant|
      menu_count = restaurant.menus.size
      count = 0
      restaurant.menus.each do |menu|
        ma = menu.allergy.split(",") #ma -> menu allergy
        ma.each do |m|
          flag = false
          ua = @user.allergy.split(",") #ua -> user a;lergy
          ua.each do |u|
            if(m == u && flag == false)
              count += 1
              flag = true
              break
            end
          end
          if flag == true
            break
          end
        end
      end
      @wariai.push(menu_count.to_s + "品中" + count.to_s + "品にアレルギー成分が含まれています")
      @percentage.push(((count.to_f / menu_count.to_f).round(1)*100).to_i)
    end
  end

    def show
      if session[:user] == nil
        redirect_to login_index_path
      end
      @usr = User.find_by(u_name:session[:user])
      @restaurant = Restaurant.find(params[:id])
      @allergy = @usr.allergy.split(",")
    end

end
