class Portfolio < ApplicationRecord
validates_presence_of :title, :body, :main_image, :thumb_image 

def self.angular
	where(subtitle: "Angular")
	end
#both of these do the same thing ^^ an the scope below
	scope :ruby_on_rails_portfolio_items, -> {where(subtitle: "Ruby on Rails")}
end
