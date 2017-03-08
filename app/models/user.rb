class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :name

  def first_name
  	self.name.split.first
  	#takes in a name and takes the first paramater.. (the first name)
  end 

  def last_name
  	self.name.split.last
  	#takes in a name and takes the second paramater.. (the last name)
  end

end

