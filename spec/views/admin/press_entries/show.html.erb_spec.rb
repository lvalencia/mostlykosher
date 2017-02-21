require 'rails_helper'

RSpec.describe "admin/press_entries/show", type: :view do
  before(:each) do
    @admin_press_entry = assign(:admin_press_entry, Admin::PressEntry.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
