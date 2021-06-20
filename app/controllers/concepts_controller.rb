class ConceptsController < ApplicationController
  helper_method :concepts, :new_concept, :concept, :software

  def create
    concept = Concept.new(concept_params)
    if concept.save
      redirect_to software_concept_path(software, concept), notice: :success
    else
      redirect_to edit_software_concept_path(software, concept), notice: concept.errors.messages
    end
  end

  def destroy
    concept.destroy
    redirect_to software_path software, notice: :success
  end

  private

  def software
    @software ||= Software.find params[:software_id]
  end

  def concepts
    @concepts ||= software.concepts.all
  end

  def concept
    @concept ||= concepts.find params[:id]
  end

  def new_concept
    @new_concept ||= Concept.new
  end

  def concept_params
    params.require(:concept).permit(:name, :short_text, :description)
  end
end
