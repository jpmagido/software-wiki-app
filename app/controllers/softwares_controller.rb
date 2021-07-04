class SoftwaresController < ApplicationController
  helper_method :softwares, :software, :new_software

  def create
    software = Software.new(software_params)

    if software.save
      redirect_to software_path(software), notice: :success
    else
      flash.now[:error] = software.errors.full_messages.to_sentence
      render :new
    end
  end

  def update
    if software.update(software_params)
      redirect_to software_path(software), notice: :success
    else
      flash.now[:error] = software.errors.full_messages.to_sentence
      render :edit
    end
  end

  def destroy
    software.destroy
    redirect_to softwares_path, notice: 'software destroyed'
  end

  private

  def new_software
    @new_software ||= Software.new
  end

  def softwares
    @softwares ||= Software.all
  end

  def software
    @software ||= softwares.find(params[:id])
  end

  def software_params
    params.require(:software).permit(:name, :description)
  end
end
