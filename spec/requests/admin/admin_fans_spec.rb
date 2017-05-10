require 'rails_helper'

RSpec.describe "Admin::Fans", type: :request do
  describe "GET /admin_fans" do
    it "works! (now write some real specs)" do
      get admin_fans_path
      expect(response).to have_http_status(200)
    end
  end
end
