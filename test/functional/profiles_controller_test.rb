require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post :create, :profile => {
        :url => 'http://nk.pl/card/123/abc',
        :html => "<script width=\"180\" id=\"nk_card\" type=\"text/javascript\" charset=\"UTF-8\" src=\"http://nk.pl/card/js/123/abc\"></script>",
        :email => "dummy@localhost.lol",
        :tos => "1"
      }, :spot_position => 10
    end

    assert_redirected_to root_path
  end

  test "should show profile" do
    get :show, :id => profiles(:one).to_param
    assert_response :success
  end

end
