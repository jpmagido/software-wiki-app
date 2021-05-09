class ConceptsController < ApplicationController
  def index
    @concepts = Concept.all
  end

  def new
    @concept = Concept.new
  end

  def create
    concept = Concept.create!(concept_params)
    redirect_to concept_path(concept)
  end

  def show
    @concept = Concept.find(params[:id])
  end

  def edit
  end

  def destroy
  end

  private

  def concept_params
    params.require(:concept).permit(:name, :short_text, :description)
  end
end
