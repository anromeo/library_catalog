require 'spec_helper'

describe "checkouts/new" do
  before(:each) do
    assign(:checkout, stub_model(Checkout,
      :book_id => 1,
      :patron_id => 1
    ).as_new_record)
  end

  it "renders new checkout form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", checkouts_path, "post" do
      assert_select "input#checkout_book_id[name=?]", "checkout[book_id]"
      assert_select "input#checkout_patron_id[name=?]", "checkout[patron_id]"
    end
  end
end
