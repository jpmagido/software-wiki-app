RSpec.shared_context 'login' do
  let!(:account) { create(:account) }
  before { post admin_sessions_create_path, params: { name: account.name, email: account.email, password: account.password } }
end
