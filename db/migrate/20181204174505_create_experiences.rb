class CreateExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :experiences do |t|
      t.references :category, foreign_key: true
      t.references :supplier, foreign_key: true
      t.integer :status
      t.string :description
      t.datetime :start
      t.datetime :finish

      t.timestamps
    end
  end
end
