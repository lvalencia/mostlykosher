require 'rails_helper'

RSpec.describe "admin/reviews/edit", type: :view do
  before(:each) do
    @admin_review = assign(:admin_review, Admin::Review.create!())
  end

  it "renders the edit admin_review form" do
    render

    assert_select "form[action=?][method=?]", admin_review_path(@admin_review), "post" do
    end
  end
end
