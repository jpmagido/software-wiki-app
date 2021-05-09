class ConceptsController < ApplicationController
  def index
    @concepts = Concept.all
  end

  def show
  end

  def edit
  end

  def new
  end
end
