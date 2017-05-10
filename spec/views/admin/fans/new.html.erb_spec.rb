require 'rails_helper'

RSpec.describe "admin/fans/new", type: :view do
  before(:each) do
    assign(:admin_fan, Admin::Fan.new())
  end

  it "renders new admin_fan form" do
    render

    assert_select "form[action=?][method=?]", admin_fans_path, "post" do
    end
  end
end
