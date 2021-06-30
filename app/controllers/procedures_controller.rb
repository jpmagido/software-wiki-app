class ProceduresController < ApplicationController
  helper_method :procedures, :procedure

  private

  def interaction
    @interaction ||= Interaction.find params[:interaction_id]
  end

  def procedures
    @procedures ||= interaction.procedures
  end

  def procedure
    @procedure ||= procedures.find params[:id]
  end
end
