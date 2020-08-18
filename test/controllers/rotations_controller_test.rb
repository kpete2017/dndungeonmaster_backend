require 'test_helper'

class RotationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rotation = rotations(:one)
  end

  test "should get index" do
    get rotations_url, as: :json
    assert_response :success
  end

  test "should create rotation" do
    assert_difference('Rotation.count') do
      post rotations_url, params: { rotation: { name: @rotation.name, user_id: @rotation.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show rotation" do
    get rotation_url(@rotation), as: :json
    assert_response :success
  end

  test "should update rotation" do
    patch rotation_url(@rotation), params: { rotation: { name: @rotation.name, user_id: @rotation.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy rotation" do
    assert_difference('Rotation.count', -1) do
      delete rotation_url(@rotation), as: :json
    end

    assert_response 204
  end
end
