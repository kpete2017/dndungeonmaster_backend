class CreateNpcs < ActiveRecord::Migration[6.0]
  def change
    create_table :npcs do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :subtitle
      t.string :race
      t.string :characterClass
      t.string :level
      t.string :strength
      t.string :dexterity
      t.string :constitution
      t.string :intelligence
      t.string :wisdom
      t.string :charisma
      t.string :initiative
      t.string :armor_class
      t.string :passive_perception
      t.string :hit_points
      t.string :proficiency_bonus
      t.string :speed
      t.string :player_name
      t.string :image_url
      t.string :actions
      t.string :equipment

      t.timestamps
    end
  end
end
