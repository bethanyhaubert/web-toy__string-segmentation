require 'test_helper'


class SSTest < Minitest::Test
  # These lines of code should not be edited. They add necessary
  # functionality for running our "acceptance tests".
  def app
    MyApp
  end

  #The actual tests go below this comment.
  def test_welcome
    get "/"

    assert last_response.ok?

    assert_includes last_response.body, "magic word wizard"
  end

  def test_string

    get "/words?string=runningtrancecat"

    assert last_response.ok?

    assert_includes last_response.body, "running, trance, cat"
  end

    def test_error

    get "/words?string=fartyfart"

    assert last_response.ok?

    assert_includes last_response.body, "I'm sorry"
  end

end






