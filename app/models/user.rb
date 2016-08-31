class User < ActiveRecord::Base

  has_secure_password

  has_many :cities
  has_many :activities
  
end
