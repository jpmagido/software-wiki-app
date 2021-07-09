class ProceduresController < ApplicationController
  helper_method :procedure, :interaction, :procedures

  private

  def interaction
    @interaction ||= Interaction.find params[:interaction_id]
  end

  def procedures
    @procedures ||= interaction.procedures
  end

  def procedure
    @procedure ||= Procedure.find params[:id]
  end
end
