class AddShortDescriptioToExperiences < ActiveRecord::Migration[5.2]
  def change
    add_column :experiences, :short_description, :string
  end
end
