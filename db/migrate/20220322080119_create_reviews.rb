class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :user
      t.integer :stars
      t.string :review
      t.references :tv, null: false, foreign_key: true

      t.timestamps
    end
  end
end
