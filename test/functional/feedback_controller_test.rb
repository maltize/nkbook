require 'test_helper'

class FeedbackControllerTest < ActionController::TestCase

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create feedback" do
    assert_difference('Feedback.count') do
      post :create, :feedback => {
        :username => 'me@home.lol',
        :message => 'Nice to meet you'
      }
    end

    assert_redirected_to root_path
  end

end
