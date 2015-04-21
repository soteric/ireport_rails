class CreateReleases < ActiveRecord::Migration
  def change
    create_table :releases do |t|
      t.string :name
      t.string :scope_id
      t.references :pillar, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
