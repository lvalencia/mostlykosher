require 'rails_helper'

RSpec.describe "admin/press_entries/index", type: :view do
  before(:each) do
    assign(:admin_press_entries, [
      Admin::PressEntry.create!(),
      Admin::PressEntry.create!()
    ])
  end

  it "renders a list of admin/press_entries" do
    render
  end
end
