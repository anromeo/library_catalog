require 'spec_helper'

describe "patrons/edit" do
  before(:each) do
    @patron = assign(:patron, stub_model(Patron,
      :firstname => "MyString",
      :lastname => "MyString"
    ))
  end

  it "renders the edit patron form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", patron_path(@patron), "post" do
      assert_select "input#patron_firstname[name=?]", "patron[firstname]"
      assert_select "input#patron_lastname[name=?]", "patron[lastname]"
    end
  end
end
