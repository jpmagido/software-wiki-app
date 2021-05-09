class SoftwaresController < ApplicationController
  def index
    @softwares = Software.all
  end

  def new
    @software = Software.new
  end

  def create
    software = Software.create!(software_params)
    redirect_to software_path(software)
  end

  def show
    @software = Software.find(params[:id])
  end

  def edit
  end

  def destroy
  end

  private

  def software_params
    params.require(:software).permit(:name, :description)
  end
end
