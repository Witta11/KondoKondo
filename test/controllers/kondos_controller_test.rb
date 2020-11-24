require 'test_helper'

class KondosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get kondos_index_url
    assert_response :success
  end

end
