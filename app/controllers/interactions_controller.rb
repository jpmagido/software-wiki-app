class InteractionsController < ApplicationController
  helper_method :interaction, :interactions

  private

  def interactions
    @interactions ||= Interaction.all
  end

  def interaction
    @interaction ||= Interaction.find params[:id]
  end
end
