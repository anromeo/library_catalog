require 'spec_helper'

describe "checkouts/show" do
  before(:each) do
    @checkout = assign(:checkout, stub_model(Checkout,
      :book_id => 1,
      :patron_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
