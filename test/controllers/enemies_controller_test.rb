require 'test_helper'

class EnemiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @enemy = enemies(:one)
  end

  test "should get index" do
    get enemies_url, as: :json
    assert_response :success
  end

  test "should create enemy" do
    assert_difference('Enemy.count') do
      post enemies_url, params: { enemy: { Actions: @enemy.Actions, CHA: @enemy.CHA, CHA_mod: @enemy.CHA_mod, CON: @enemy.CON, CON_mod: @enemy.CON_mod, DEX: @enemy.DEX, DEX_mod: @enemy.DEX_mod, INT: @enemy.INT, INT_mod: @enemy.INT_mod, Languages: @enemy.Languages, Legendary_Actions: @enemy.Legendary_Actions, STR: @enemy.STR, STR_mod: @enemy.STR_mod, Saving_Throws: @enemy.Saving_Throws, Senses: @enemy.Senses, Skills: @enemy.Skills, Speed: @enemy.Speed, Traits: @enemy.Traits, WIS: @enemy.WIS, WIS_mod: @enemy.WIS_mod, armor_class: @enemy.armor_class, hit_points: @enemy.hit_points, image_url: @enemy.image_url, level: @enemy.level, meta: @enemy.meta, name: @enemy.name, user_id: @enemy.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show enemy" do
    get enemy_url(@enemy), as: :json
    assert_response :success
  end

  test "should update enemy" do
    patch enemy_url(@enemy), params: { enemy: { Actions: @enemy.Actions, CHA: @enemy.CHA, CHA_mod: @enemy.CHA_mod, CON: @enemy.CON, CON_mod: @enemy.CON_mod, DEX: @enemy.DEX, DEX_mod: @enemy.DEX_mod, INT: @enemy.INT, INT_mod: @enemy.INT_mod, Languages: @enemy.Languages, Legendary_Actions: @enemy.Legendary_Actions, STR: @enemy.STR, STR_mod: @enemy.STR_mod, Saving_Throws: @enemy.Saving_Throws, Senses: @enemy.Senses, Skills: @enemy.Skills, Speed: @enemy.Speed, Traits: @enemy.Traits, WIS: @enemy.WIS, WIS_mod: @enemy.WIS_mod, armor_class: @enemy.armor_class, hit_points: @enemy.hit_points, image_url: @enemy.image_url, level: @enemy.level, meta: @enemy.meta, name: @enemy.name, user_id: @enemy.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy enemy" do
    assert_difference('Enemy.count', -1) do
      delete enemy_url(@enemy), as: :json
    end

    assert_response 204
  end
end
