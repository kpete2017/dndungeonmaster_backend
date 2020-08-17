class CreateRegions < ActiveRecord::Migration[6.0]
  def change
    create_table :regions do |t|
      t.string :plane
      t.string :continent
      t.string :area
      t.string :climate
      t.string :terrain
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
