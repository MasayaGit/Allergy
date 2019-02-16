class UserRegistrationController < ApplicationController
  def index
    @title = "ユーザー登録"
    @name = '名前を入力して下さい'
    @gender = "性別を選択して下さい"
    @old = "年代を選択して下さい"
    @allergy = "アレルギーを選択して下さい"
    if request.post? then

      if params['inputName'] then
        @name = params['inputName']

      end

      if params['gender'] then
        @gender = params['gender']
      end

      if params['old'] then
        @old = params['old']
      end

      if params['Allergylist'] then
        @allergy = ""
        #di1にアレルギー名　di2に0か１（１なら選択された）
        params['Allergylist'].each do |di1,di2|
          if di2 == "1"
          @allergy += di1
          end
        end
        if @allergy == ""
          @allergy = "アレルギーを選択して下さい"
        end
      end

      user = User.new(u_name: @name, sex: @gender, age: @old, allergy: @allergy)
      user.save

    else
    end
  end
end
