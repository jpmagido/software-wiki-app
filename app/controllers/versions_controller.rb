class VersionsController < ApplicationController
  helper_method :versions, :version, :new_version, :software

  def create
    version = software.new(version_params)
    if version.save
      redirect_to software_version_path(software, version), notice: :success
    else
      flash.now[:error] = version.errors.full_messages.to_sentence
      render :new
    end
  end

  def update
    if version.update(version_params)
      redirect_to version_path(version), notice: :success
    else
      flash.now[:error] = version.errors.full_messages.to_sentence
      render :edit
    end
  end

  def destroy
    version.destroy
    redirect_to versions_path, notice: 'version destroyed'
  end

  private

  def new_version
    @new_version ||= version.new
  end

  def versions
    @versions ||= version.all
  end

  def version
    @version ||= versions.find(params[:id])
  end

  def software
    @software ||= Software.find(params[:software_id])
  end

  def version_params
    params.require(:version).permit(:name, :description)
  end
end
