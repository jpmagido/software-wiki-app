class UsersController < ApplicationController
  helper_method :users, :user

  private

  def users
    @users ||= User.all
  end

  def user
    @user ||= users.find params[:id]
  end
end
