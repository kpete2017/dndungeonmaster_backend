require 'test_helper'

class PlayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @player = players(:one)
  end

  test "should get index" do
    get players_url, as: :json
    assert_response :success
  end

  test "should create player" do
    assert_difference('Player.count') do
      post players_url, params: { player: { actions: @player.actions, armor_class: @player.armor_class, characterClass: @player.characterClass, charisma: @player.charisma, constitution: @player.constitution, dexterity: @player.dexterity, equipment: @player.equipment, hit_points: @player.hit_points, id: @player.id, image_url: @player.image_url, initiative: @player.initiative, intelligence: @player.intelligence, level: @player.level, name: @player.name, passive_perception: @player.passive_perception, player_name: @player.player_name, proficiency_bonus: @player.proficiency_bonus, race: @player.race, speed: @player.speed, strength: @player.strength, subtitle: @player.subtitle, user_id: @player.user_id, wisdom: @player.wisdom } }, as: :json
    end

    assert_response 201
  end

  test "should show player" do
    get player_url(@player), as: :json
    assert_response :success
  end

  test "should update player" do
    patch player_url(@player), params: { player: { actions: @player.actions, armor_class: @player.armor_class, characterClass: @player.characterClass, charisma: @player.charisma, constitution: @player.constitution, dexterity: @player.dexterity, equipment: @player.equipment, hit_points: @player.hit_points, id: @player.id, image_url: @player.image_url, initiative: @player.initiative, intelligence: @player.intelligence, level: @player.level, name: @player.name, passive_perception: @player.passive_perception, player_name: @player.player_name, proficiency_bonus: @player.proficiency_bonus, race: @player.race, speed: @player.speed, strength: @player.strength, subtitle: @player.subtitle, user_id: @player.user_id, wisdom: @player.wisdom } }, as: :json
    assert_response 200
  end

  test "should destroy player" do
    assert_difference('Player.count', -1) do
      delete player_url(@player), as: :json
    end

    assert_response 204
  end
end
