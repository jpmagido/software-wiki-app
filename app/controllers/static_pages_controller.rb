class StaticPagesController < ApplicationController
  helper_method :softwares

  def home
  end

  def landing
  end

  def contact
  end

  private

  def softwares
    @softwares ||= Software.online
  end
end
