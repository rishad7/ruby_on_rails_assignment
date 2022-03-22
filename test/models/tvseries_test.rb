require "test_helper"

class TvseriesTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  fixtures :tvseries

  def test_tvseries
    first_tvseries = Tvseries.new :genre => tvseries(:one).genre, 
         :no_of_seosons => tvseries(:one).no_of_seosons,
         :date_of_first_release => tvseries(:one).date_of_first_release,
         :director => tvseries(:one).director,
         :actor => tvseries(:one).actor,
         :shoot_location => tvseries(:one).shoot_location,
         :country => tvseries(:one).country,
         :tv_id => tvseries(:one).tv_id

    assert first_tvseries.save

    first_tvseries_copy = Tvseries.find(first_tvseries.id)

    assert_equal first_tvseries.genre, first_tvseries_copy.genre

    first_tvseries.genre = "Legal Drama"

    assert first_tvseries.save
    assert first_tvseries.destroy

  end
end
