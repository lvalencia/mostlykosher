require 'rails_helper'

RSpec.describe "admin/press_entries/new", type: :view do
  before(:each) do
    assign(:admin_press_entry, Admin::PressEntry.new())
  end

  it "renders new admin_press_entry form" do
    render

    assert_select "form[action=?][method=?]", admin_press_entries_path, "post" do
    end
  end
end
