class Checkout < ActiveRecord::Base
  attr_accessible :book_id, :duedate, :patron_id, :book_title

  belongs_to :patron
  belongs_to :book
  validates :patron_id, :presence => :true
  validates :book_id, :presence => :true
end
