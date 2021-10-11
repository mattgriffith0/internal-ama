class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @questions = @user.questions
  end

  def index
    @users = User.all 
  end
end
