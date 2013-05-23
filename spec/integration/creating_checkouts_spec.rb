require 'spec_helper'

feature "a patron checks out a library book" do
	let!(:book){Book.create(title: "Jolly Roger")}
	let!(:patron){Patron.create(firstname: "Mattie")}

	scenario "a patron checks library book out" do
		visit '/'
		click_link 'Checkout Book'
		select 'Jolly Roger', :for => "book"
		select 'Matt', :for => "firstname"
		click_button 'Checkout'
		page.should have_content('Mattie checked out: Jolly Roger')
		page.should have_content('It is due ')
	end
end