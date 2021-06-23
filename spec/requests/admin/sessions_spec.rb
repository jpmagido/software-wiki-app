require 'rails_helper'

RSpec.describe "Admin::Sessions", type: :request do
  let!(:account) { create(:account) }

  describe "GET /new" do
    it "returns http success" do
      get admin_sessions_new_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /create" do
    it "returns http success" do
      expect(post admin_sessions_create_path, params: { name: account.name, email: account.email ,password: account.password })
        .to redirect_to admin_account_path account, notice: :success
    end
  end

  describe "DELETE /destroy" do
    include_context 'login'

    it "returns http success" do
      expect(delete admin_sessions_destroy_path).to redirect_to admin_sessions_new_path
    end
  end
end
