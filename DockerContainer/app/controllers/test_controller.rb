class TestController < ApplicationController
  def index
    @test = Test.all
  end

  def show
    @test = Article.find(params[:id])
  end
end
