class Show < ActiveRecord::Base
  #associations
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    actors_array = []
    self.actors.each do |ac|
      actor_full_name = "#{ac.full_name}"
      actors_array << actor_full_name
    end
    return actors_array
  end

end
