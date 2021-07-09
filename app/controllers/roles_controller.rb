class RolesController < ApplicationController
  helper_method :roles, :role

  private

  def roles
    @roles ||= Role.all
  end

  def role
    @role ||= Role.find params[:id]
  end
end
