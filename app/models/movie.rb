class Movie < ActiveRecord::Base
  attr_accessible :title, :rating, :description, :release_date
  def self.get_all_ratings
  	Movie.pluck(:rating).uniq
  end
end
