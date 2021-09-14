class ConceptsController < ApplicationController
  helper_method :concepts, :new_concept, :concept, :software, :concept_interactions

  def create
    @concept = Concept.new(concept_params)
    if @concept.save
      @concept.software_concepts.create!(software_id: params[:software_id])
      # software.concepts << @concept
      redirect_to software_concept_path(software, @concept), notice: :success
    else
      redirect_to edit_software_concept_path(software, @concept), notice: concept.errors.messages
      # flash[:error] = @concept.errors.full_messages.to_sentence
      # render :new
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
    # @concept ||= Concept.new
  end

  def concept_interactions
    @concept_interactions ||= concept.interactions
  end

  def concept_params
    params.require(:concept).permit(:name, :short_text, :description)
  end
end
