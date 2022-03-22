require "test_helper"

class TvTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  fixtures :tvs

  def test_review
    first_tv = Tv.new :name => tvs(:one).name

    assert first_tv.save

    first_tv_copy = Tv.find(first_tv.id)

    assert_equal first_tv.name, first_tv_copy.name

    first_tv.name = "Suit"

    assert first_tv.save
    assert first_tv.destroy

  end

  test "should not save a tv series without a name" do
    tv = Tv.new
    tv.name = "Suit"
    
    assert tv.save, "Saved the tv series without a name"
  end
end
