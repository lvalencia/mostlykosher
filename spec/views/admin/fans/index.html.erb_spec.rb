require 'rails_helper'

RSpec.describe "admin/fans/index", type: :view do
  before(:each) do
    assign(:admin_fans, [
      Admin::Fan.create!(),
      Admin::Fan.create!()
    ])
  end

  it "renders a list of admin/fans" do
    render
  end
end
