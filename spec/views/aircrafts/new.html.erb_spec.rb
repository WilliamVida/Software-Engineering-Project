require 'rails_helper'

RSpec.describe "aircrafts/new", type: :view do
  before(:each) do
    assign(:aircraft, Aircraft.new(
      :name => "MyString",
      :role => "MyString",
      :country => "MyString",
      :year => "MyString"
    ))
  end

  it "renders new aircraft form" do
    render

      assert_select "form[action=?][method=?]", aircrafts_path, "post" do

      assert_select "input#aircraft_name[name=?]", "aircraft[name]"

#       assert_select "input#aircraft_role[name=?]", "aircraft[role]"

      assert_select "input#aircraft_country[name=?]", "aircraft[country]"

      assert_select "input#aircraft_year[name=?]", "aircraft[year]"
    end
  end
end
