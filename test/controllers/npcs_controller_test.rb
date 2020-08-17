require 'test_helper'

class NpcsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @npc = npcs(:one)
  end

  test "should get index" do
    get npcs_url, as: :json
    assert_response :success
  end

  test "should create npc" do
    assert_difference('Npc.count') do
      post npcs_url, params: { npc: { actions: @npc.actions, armor_class: @npc.armor_class, characterClass: @npc.characterClass, charisma: @npc.charisma, constitution: @npc.constitution, dexterity: @npc.dexterity, equipment: @npc.equipment, hit_points: @npc.hit_points, id: @npc.id, image_url: @npc.image_url, initiative: @npc.initiative, intelligence: @npc.intelligence, level: @npc.level, name: @npc.name, passive_perception: @npc.passive_perception, player_name: @npc.player_name, proficiency_bonus: @npc.proficiency_bonus, race: @npc.race, speed: @npc.speed, strength: @npc.strength, subtitle: @npc.subtitle, user_id: @npc.user_id, wisdom: @npc.wisdom } }, as: :json
    end

    assert_response 201
  end

  test "should show npc" do
    get npc_url(@npc), as: :json
    assert_response :success
  end

  test "should update npc" do
    patch npc_url(@npc), params: { npc: { actions: @npc.actions, armor_class: @npc.armor_class, characterClass: @npc.characterClass, charisma: @npc.charisma, constitution: @npc.constitution, dexterity: @npc.dexterity, equipment: @npc.equipment, hit_points: @npc.hit_points, id: @npc.id, image_url: @npc.image_url, initiative: @npc.initiative, intelligence: @npc.intelligence, level: @npc.level, name: @npc.name, passive_perception: @npc.passive_perception, player_name: @npc.player_name, proficiency_bonus: @npc.proficiency_bonus, race: @npc.race, speed: @npc.speed, strength: @npc.strength, subtitle: @npc.subtitle, user_id: @npc.user_id, wisdom: @npc.wisdom } }, as: :json
    assert_response 200
  end

  test "should destroy npc" do
    assert_difference('Npc.count', -1) do
      delete npc_url(@npc), as: :json
    end

    assert_response 204
  end
end
