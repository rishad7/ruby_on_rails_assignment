require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest

  fixtures :tvseries

  test "should get index" do
    get home_index_url
    assert_response :success
  end

  def test_search_tvseries
    first_tvseries = Tvseries.new :genre => tvseries(:one).genre, 
         :no_of_seosons => tvseries(:one).no_of_seosons,
         :date_of_first_release => tvseries(:one).date_of_first_release,
         :director => tvseries(:one).director,
         :actor => tvseries(:one).actor,
         :shoot_location => tvseries(:one).shoot_location,
         :country => tvseries(:one).country,
         :tv_id => tvseries(:one).tv_id

    assert first_tvseries.save

    search = "Meghan"

    assert_equal first_tvseries.actor, search

  end

end
