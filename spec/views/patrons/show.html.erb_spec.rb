require 'spec_helper'

describe "patrons/show" do
  before(:each) do
    @patron = assign(:patron, stub_model(Patron,
      :firstname => "Firstname",
      :lastname => "Lastname"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Firstname/)
    rendered.should match(/Lastname/)
  end
end
