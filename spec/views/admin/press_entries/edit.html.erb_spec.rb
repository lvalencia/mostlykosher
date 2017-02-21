require 'rails_helper'

RSpec.describe "admin/press_entries/edit", type: :view do
  before(:each) do
    @admin_press_entry = assign(:admin_press_entry, Admin::PressEntry.create!())
  end

  it "renders the edit admin_press_entry form" do
    render

    assert_select "form[action=?][method=?]", admin_press_entry_path(@admin_press_entry), "post" do
    end
  end
end
