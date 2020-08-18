require 'test_helper'

class AlliesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ally = allies(:one)
  end

  test "should get index" do
    get allies_url, as: :json
    assert_response :success
  end

  test "should create ally" do
    assert_difference('Ally.count') do
      post allies_url, params: { ally: { player_id: @ally.player_id, user_id: @ally.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show ally" do
    get ally_url(@ally), as: :json
    assert_response :success
  end

  test "should update ally" do
    patch ally_url(@ally), params: { ally: { player_id: @ally.player_id, user_id: @ally.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy ally" do
    assert_difference('Ally.count', -1) do
      delete ally_url(@ally), as: :json
    end

    assert_response 204
  end
end
