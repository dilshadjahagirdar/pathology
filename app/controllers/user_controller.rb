class UserController < ApplicationController

  skip_before_action :verify_authenticity_token


  # [22-4-2018]Dilshad:Login check.
  def check
    @user = User.where(:email => user_params["email"])

    if @user.length == 0
      render :json => {:redirect_to => "/index.html", :msg=> "User not found"},status: 200

    elsif @user.length > 0 and @user.first.password != user_params["password"]
      render :json => {:redirect_to => "/index.html", :msg => "password not match"}, status:200

    elsif @user.length > 0 and @user.first.password == user_params["password"]
      render :json => {:redirect_to => "/dashboard.html" ,:msg => "login succefull"},status:200
    else
      render :json => {:msg => "something went wrong"},status:500
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render :json => {:redirect_to => "/index.html" ,:msg => "user created successfully"},status: 200
    else
      render :json => {:msg => "Something went wrong."},status: 500
    end
  end


  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
