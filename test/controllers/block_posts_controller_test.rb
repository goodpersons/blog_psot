require "test_helper"

class BlockPostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get block_posts_index_url
    assert_response :success
  end
end
