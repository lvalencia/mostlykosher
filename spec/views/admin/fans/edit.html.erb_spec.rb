require 'rails_helper'

RSpec.describe "admin/fans/edit", type: :view do
  before(:each) do
    @admin_fan = assign(:admin_fan, Admin::Fan.create!())
  end

  it "renders the edit admin_fan form" do
    render

    assert_select "form[action=?][method=?]", admin_fan_path(@admin_fan), "post" do
    end
  end
end
