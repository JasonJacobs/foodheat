class Cuisine < ActiveRecord::Base
  has_many :restaurant_cuisines
  has_many :restaurants, :through => :restaurant_cuisines
  has_many :facts
  validates :name, uniqueness: true

  def random_fact
    self.facts.sample.content
  end
end
