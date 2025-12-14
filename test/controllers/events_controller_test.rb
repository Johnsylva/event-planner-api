require "test_helper"

class EventsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "index" do
    get "/events.json"
    assert_response 200

    data= JSON.parse(response.body)
    assert_equal Event.count, data.length
  end
end
