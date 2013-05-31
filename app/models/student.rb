class Student < ActiveRecord::Base
   attr_accessible :name, :username, :cls, :section, :email, :mobile, :password
   
   EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
   
   validates :name, :presence => true, :length=>{:maximum => 25}
   validates :cls, :presence => true, :length=>{:maximum => 25}
   validates :section, :presence => true, :length=>{:maximum => 25}
   validates :username, :presence => true, :length=>{:within => 8..25}, :uniqueness => true
   validates :email, :presence => true, :format => EMAIL_REGEX, :confirmation => true
   validates :mobile, :presence => true
   validates :password, :presence => true, :length=>{:within => 4..25}
     
  
   
end
