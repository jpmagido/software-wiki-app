class Admin::AccountsController < ApplicationController
  helper_method :account

  def update
    if account.update(params_account)
      redirect_to admin_account_path account
    else
      redirect_to edit_admin_account_path account, notice: { flash: account.errors.messages}
    end
  end

  private

  def account
    @account ||= Account.find params[:id]
  end

  def params_account
    params.require(:account).permit(:name, :email, :password)
  end
end
