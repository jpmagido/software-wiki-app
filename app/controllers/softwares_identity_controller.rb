class SoftwaresIdentityController < ApplicationController
  helper_method :software_identities, :software_identity

  private

  def software_identities
    @software_identities ||= SoftwareIdentity.all
  end

  def software_identity
    @software_identity || software_identities.find(params[:id])
  end
end
