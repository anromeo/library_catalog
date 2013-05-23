require 'spec_helper'

describe "patrons/new" do
  before(:each) do
    assign(:patron, stub_model(Patron,
      :firstname => "MyString",
      :lastname => "MyString"
    ).as_new_record)
  end

  it "renders new patron form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", patrons_path, "post" do
      assert_select "input#patron_firstname[name=?]", "patron[firstname]"
      assert_select "input#patron_lastname[name=?]", "patron[lastname]"
    end
  end
end
