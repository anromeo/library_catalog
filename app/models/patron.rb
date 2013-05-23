class Patron < ActiveRecord::Base
  attr_accessible :firstname, :lastname

  has_many :books, :through => :checkouts
  has_many :checkouts
end
