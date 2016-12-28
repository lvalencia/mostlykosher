require 'rails_helper'

RSpec.describe "admin/reviews/index", type: :view do
  before(:each) do
    assign(:admin_reviews, [
      Admin::Review.create!(),
      Admin::Review.create!()
    ])
  end

  it "renders a list of admin/reviews" do
    render
  end
end
