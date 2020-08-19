class CreateEnemies < ActiveRecord::Migration[6.0]
  def change
    create_table :enemies do |t|
      t.string :name
      t.string :meta
      t.string :armor_class
      t.string :hit_points
      t.string :Speed
      t.string :STR
      t.string :STR_mod
      t.string :DEX
      t.string :DEX_mod
      t.string :CON
      t.string :CON_mod
      t.string :INT
      t.string :INT_mod
      t.string :WIS
      t.string :WIS_mod
      t.string :CHA
      t.string :CHA_mod
      t.string :Saving_Throws
      t.string :Skills
      t.string :Senses
      t.string :Languages
      t.string :level
      t.string :Traits
      t.string :Actions
      t.string :Legendary_Actions
      t.string :image_url
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
