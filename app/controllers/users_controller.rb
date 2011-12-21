# Übernommen aus "Ruby on Rails Tutorial" von Michael Hartl
class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @title = @user.name
  end

  def new
    @title = "Sign up"
  end
end