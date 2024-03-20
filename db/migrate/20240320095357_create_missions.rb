class CreateMissions < ActiveRecord::Migration[7.1]
  def change
    create_table :missions do |t|
      t.date :date
      t.integer :price
      t.string :mission_type
      t.references :listing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
