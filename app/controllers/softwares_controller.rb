class SoftwaresController < ApplicationController
  helper_method :softwares, :software, :new_software

  def create
    software = Software.create!(software_params)
    redirect_to software_path(software)
  end

  def update
    if software.update(software_params)
      redirect_to software_path(software), notice: :success
    else
      redirect_to edit_software_path(software), notice: software.errors.messages
    end
  end

  def destroy
    software.destroy!
    redirect_to softwares_path, notice: 'software destroyed'
  end

  private

  def new_software
    @new_software ||= Software.new(software_identity_id: params[:softwares_identity_id])
  end

  def softwares
    @softwares ||= Software.all
  end

  def software
    @software ||= softwares.find(params[:id])
  end

  def software_params
    params.require(:software).permit(:online)
  end
end
