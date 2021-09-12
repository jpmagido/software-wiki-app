class PropertiesController < ApplicationController
  helper_method :software, :concept, :property, :properties, :property_interactions, :values

  def update
    if property.update(params_property)
      redirect_to software_concept_property_path(software, concept, property), notice: :success
    else
      redirect_to edit_software_concept_property_path(software, concept, property), notice: property.errors.messages
    end
  end

  def destroy
    property.destroy
    redirect_to software_concept_path(software, concept), notice: :success
  end

  private

  def software
    @software ||= Software.find params[:software_id]
  end

  def concept
    @concept ||= software.concepts.find(params[:concept_id])
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

  def values
    @values ||= property.values
  end

  def params_property
    params.require(:property).permit(:name, :description)
  end
end
