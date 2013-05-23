require 'spec_helper'

describe "patrons/index" do
  before(:each) do
    assign(:patrons, [
      stub_model(Patron,
        :firstname => "Firstname",
        :lastname => "Lastname"
      ),
      stub_model(Patron,
        :firstname => "Firstname",
        :lastname => "Lastname"
      )
    ])
  end

  it "renders a list of patrons" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
  end
end
