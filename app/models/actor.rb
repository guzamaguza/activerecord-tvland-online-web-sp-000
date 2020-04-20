class Actor < ActiveRecord::Base
  #associations
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    return "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    role_array = []
    self.characters.each do |ch|
      name_and_char = "#{ch.name} - #{ch.show.name}"
      role_array << name_and_char
    end
    return role_array
  end

end
