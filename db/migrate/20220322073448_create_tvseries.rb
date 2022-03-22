class CreateTvseries < ActiveRecord::Migration[7.0]
  def change
    create_table :tvseries do |t|
      t.string :genre
      t.integer :no_of_seosons
      t.string :date_of_first_release
      t.string :director
      t.string :actor
      t.string :shoot_location
      t.string :country
      t.references :tv, null: false, foreign_key: true

      t.timestamps
    end
  end
end
