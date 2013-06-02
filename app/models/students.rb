class Students < ActiveRecord::Base
   attr_accessible :name, :username, :cls, :section, :email, :mobile, :password
   
   EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
   pass= /^[0-9]{10,12}$/i
   validates :name, :presence => true, :length =>{:maximum => 25}
   validates :cls, :presence => true, :length =>{:maximum => 25}
   validates :section, :presence => true, :length=>{:maximum => 25}
   validates :username, :presence => true, :length=>{:within => 8..25}, :uniqueness => true
   validates :email, :presence => true, :format => EMAIL_REGEX
   validates :mobile, :presence => true, :format => pass, :length =>{:maximum => 10}
   validates :password, :presence => true, :length=>{:within => 4..25}
     
  
   
end
