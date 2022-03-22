require "test_helper"

class ReviewTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  fixtures :reviews

  def test_review
    first_review = Review.new :user => reviews(:one).user, 
         :stars => reviews(:one).stars,
         :review => reviews(:one).review,
         :tv_id => reviews(:one).tv_id

    assert first_review.save

    first_review_copy = Review.find(first_review.id)

    assert_equal first_review.user, first_review_copy.user

    first_review.user = "Sam Pedro"

    assert first_review.save
    assert first_review.destroy

  end
end
