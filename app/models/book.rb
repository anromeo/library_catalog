class Book < ActiveRecord::Base
  attr_accessible :description, :title

  has_many :checkouts
  has_many :patrons, :through => :checkouts
end
