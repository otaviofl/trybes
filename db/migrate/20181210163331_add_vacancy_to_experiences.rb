class AddVacancyToExperiences < ActiveRecord::Migration[5.2]
  def change
    add_column :experiences, :vacancy, :integer
  end
end
