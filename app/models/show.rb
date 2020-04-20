class Show < ActiveRecord::Base
  #associations
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    actors_array = []
    self.actors.each do |ac|
       = "#{ac.name} - #{ac.show.name}"
      role_array << name_and_char
    end
    return actors_array
  end

end
