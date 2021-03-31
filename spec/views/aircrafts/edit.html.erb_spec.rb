require 'rails_helper'

RSpec.describe "aircrafts/edit", type: :view do
  before(:each) do
    @aircraft = assign(:aircraft, Aircraft.create!(
      :name => "MyString",
      :role => "MyString",
      :country => "MyString",
      :year => "MyString"
    ))
  end

  it "renders the edit aircraft form" do
    render

    assert_select "form[action=?][method=?]", aircraft_path(@aircraft), "post" do

      assert_select "input#aircraft_name[name=?]", "aircraft[name]"

      assert_select "input#aircraft_role[name=?]", "aircraft[role]"

      assert_select "input#aircraft_country[name=?]", "aircraft[country]"

      assert_select "input#aircraft_year[name=?]", "aircraft[year]"
    end
  end
end
