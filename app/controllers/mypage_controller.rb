class MypageController < ApplicationController

  def index

    if session[:user] == nil
      redirect_to login_index_path
    end
    @user = User.find_by(u_name:session[:user])


    @tamagoFlag = false
    @komugiFlag = false
    @milkFlag = false
    @kaniFlag = false
    @ebiFlag = false
    @sobaFlag = false
    @peanutFlag = false

    @user.allergy.split(",").each do |allergy|
      if (allergy == "卵")
        @tamagoFlag = true
      end
      if (allergy == "小麦")
        @komugiFlag = true
      end
      if (allergy == "乳")
        @milkFlag = true
      end
      if (allergy == "かに")
        @kaniFlag = true
      end
      if (allergy == "えび")
        @ebiFlag = true
      end
      if (allergy == "そば")
        @sobaFlag = true
      end
      if (allergy == "落花生")
        @peanutFlag = true
      end
    end

  end
end
