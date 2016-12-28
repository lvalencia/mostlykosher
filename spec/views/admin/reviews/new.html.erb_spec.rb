require 'rails_helper'

RSpec.describe "admin/reviews/new", type: :view do
  before(:each) do
    assign(:admin_review, Admin::Review.new())
  end

  it "renders new admin_review form" do
    render

    assert_select "form[action=?][method=?]", admin_reviews_path, "post" do
    end
  end
end
