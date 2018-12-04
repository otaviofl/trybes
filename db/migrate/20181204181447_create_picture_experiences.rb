class CreatePictureExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :picture_experiences do |t|
      t.string :picture
      t.references :experience, foreign_key: true

      t.timestamps
    end
  end
end
