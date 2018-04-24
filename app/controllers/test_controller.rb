class TestController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @tests = Test.all
    if @tests
      render :json => {:redirect_to => "/tests_all.html",:tests => @tests},status: 200
    else
      render :json => {:redirect_to => "/500.html",:msg => "something went wrong"},status:500
    end
  end

  def create
    @test = Test.new(test_params)
    if @test.save
      render :json => {:redirect_to => "/tests_all.html", :msg => "tst created succefully"},status: 200
    else
      render :json => {:redirect_to => "500.html", :msg => "test creation failed"},status: 500
    end
  end

  def test_params
    params.require(:test).permit(:test_name, :minimum_count, :maximum_count, :unit, :cost )
  end
end
