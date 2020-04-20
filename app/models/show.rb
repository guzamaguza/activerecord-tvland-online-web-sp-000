class Show < ActiveRecord::Base
  #associations
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    actors_array = []
    self.actors.each do |ac|
      actor_and_show = "#{ac.full_name} - #{ac.name}"
      actors_array << actor_and_show
    end
    return actors_array
  end

end
