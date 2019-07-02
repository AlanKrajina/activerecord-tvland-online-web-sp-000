class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    "#{self.first_name} #{self.last_name}"
  end
  
  def list_roles
   # self.characters.collect do |char|
      self.shows.collect do |char|
        char.characters.collect do |ch|
      binding.pry
      
 #     "#{self.characters.name - char.name}"
 end
    end  
  end
end