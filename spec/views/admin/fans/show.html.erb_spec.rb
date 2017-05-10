require 'rails_helper'

RSpec.describe "admin/fans/show", type: :view do
  before(:each) do
    @admin_fan = assign(:admin_fan, Admin::Fan.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
