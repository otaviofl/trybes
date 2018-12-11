class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @locations = get_experience_locations
    @categories = get_experience_categories
    #@categories = get_experience_by(category, name)
  end

  private

  def get_experience_locations
    experiences = Experience.all
    locations = []
    experiences.each do |experience|
      locations << experience.location
    end
    locations.uniq
  end

  def get_experience_categories
    experiences = Experience.all
    categories = []
    experiences.each do |experience|
      categories << experience.category.name
    end
    categories.uniq
  end

  def get_experience_by(attribute, field)
    experiences = Experience.all
    results = []
    experiences.each do |experience|
      results << experience.attribute.field
    end
    results.uniq
  end

end
