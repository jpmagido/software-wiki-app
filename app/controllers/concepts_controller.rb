class ConceptsController < ApplicationController
  helper_method :concepts, :new_concept, :concept, :version, :concept_interactions

  def create
    concept = version.new(concept_params)
    if concept.save
      redirect_to version_concept_path(version, concept), notice: :success
    else
      flash.now[:error]= concept.errors.ful_messages.to_sentence
      render :new
    end
  end

  def destroy
    concept.destroy
    redirect_to version_path version, notice: :success
  end

  private

  def version
    @version ||= version.find params[:version_id]
  end

  def concepts
    @concepts ||= version.concepts.all
  end

  def concept
    @concept ||= concepts.find params[:id]
  end

  def new_concept
    @new_concept ||= Concept.new
  end

  def concept_interactions
    @concept_interactions ||= concept.interactions
  end

  def concept_params
    params.require(:concept).permit(:name, :short_text, :description)
  end
end
