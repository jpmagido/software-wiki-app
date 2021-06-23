class Admin::SessionsController < ApplicationController
  before_action :login?, except: [:new, :create]

  def create
    if account
      set_credentials!
      redirect_to admin_account_path account, notice: :success
    else
      redirect_to admin_sessions_new_path, flash: { error: 'Mauvais identifiants' }
    end
  end

  def destroy
    reset_session
    redirect_to admin_sessions_new_path, notice: :success
  end

  private

  def login?
    redirect_to admin_sessions_new_path if session[:account_credentials].nil?
  end

  def account
    @account ||= Account.find_by(session[:account_credentials] || sign_in_params)
  end

  def set_credentials!
    session[:account_credentials] = { name: params[:name], email: params[:email], password: params[:password] }
  end

  def sign_in_params
    params.permit(:name, :email, :password)
  end
end
