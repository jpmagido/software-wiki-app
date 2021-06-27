class InteractionsController < ApplicationController
  helper_method :interactions, :interaction

  private

  def interactions
    @interactions ||= Interaction.all
  end

  def interaction
    @interaction ||= interactions.find params[:id]
  end
end
