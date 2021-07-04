class PropertiesController < ApplicationController
  helper_method :version, :concept, :property, :properties, :property_interactions

  def update
    if property.update(params_property)
      redirect_to version_concept_property_path(version, concept, property), notice: :success
    else
<<<<<<< HEAD
      flash.now[:error] = property.errors.full_messages.to_sentence
      render :edit
=======
      redirect_to edit_version_concept_property_path(version, concept, property), notice: property.errors.messages
>>>>>>> fcb138f865ba3f9d6c049c9ca620f3fd834e46f3
    end
  end

  def destroy
    property.destroy
    redirect_to version_concept_path(version, concept), notice: :success
  end

  private

  def version
    @version ||= version.find params[:version_id]
  end

  def concept
    @concept ||= version.concepts.find(params[:concept_id])
  end

  def property
    @property ||= concept.properties.find(params[:id])
  end

  def properties
    @properties ||= Property.all
  end

  def property_interactions
    @property_interactions ||= property.interactions
  end

  def params_property
    params.require(:property).permit(:name, :description)
  end
end
