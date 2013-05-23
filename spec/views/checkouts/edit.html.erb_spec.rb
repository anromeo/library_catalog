require 'spec_helper'

describe "checkouts/edit" do
  before(:each) do
    @checkout = assign(:checkout, stub_model(Checkout,
      :book_id => 1,
      :patron_id => 1
    ))
  end

  it "renders the edit checkout form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", checkout_path(@checkout), "post" do
      assert_select "input#checkout_book_id[name=?]", "checkout[book_id]"
      assert_select "input#checkout_patron_id[name=?]", "checkout[patron_id]"
    end
  end
end
