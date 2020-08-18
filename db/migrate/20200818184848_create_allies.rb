class CreateAllies < ActiveRecord::Migration[6.0]
  def change
    create_table :allies do |t|
      t.references :player, null: true, foreign_key: true
      t.references :npc, null: true, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
