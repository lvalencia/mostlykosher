require 'rails_helper'

RSpec.describe "admin/reviews/show", type: :view do
  before(:each) do
    @admin_review = assign(:admin_review, Admin::Review.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
