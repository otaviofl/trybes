class AddShortTitleToExperiences < ActiveRecord::Migration[5.2]
  def change
    add_column :experiences, :short_title, :string
  end
end
