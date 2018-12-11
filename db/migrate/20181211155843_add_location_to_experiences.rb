class AddLocationToExperiences < ActiveRecord::Migration[5.2]
  def change
    add_column :experiences, :location, :string
  end
end
