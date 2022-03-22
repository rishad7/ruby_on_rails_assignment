class CreateTvs < ActiveRecord::Migration[7.0]
  def change
    create_table :tvs do |t|
      t.string :name

      t.timestamps
    end
  end
end
