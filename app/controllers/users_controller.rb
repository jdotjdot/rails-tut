class UsersController < ApplicationController

  def new
    @user = Users.new
  end

  def show
    @user = Users.find(params[:id])
  end

end
