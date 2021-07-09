require 'rails_helper'

RSpec.describe "Properties", type: :request do
  let(:version) { create(:version)}
  let(:concept) { create(:concept)}
  let(:property) { create_list(:property, 2, concept: concept)}

  let(:version_concept) { create(:version_concept, concept: concept, version: version)}


  describe "GET /show" do
    it "returns http success" do
      get version_concept_property_path version, concept, property
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get edit_version_concept_property_path version, concept, property
      expect(response).to have_http_status(:success)
    end
  end
end
