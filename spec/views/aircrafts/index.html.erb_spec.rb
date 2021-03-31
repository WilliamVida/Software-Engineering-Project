require 'rails_helper'

RSpec.describe "aircrafts/index", type: :view do
  before(:each) do
    assign(:aircrafts, [
      Aircraft.create!(
        :name => "Name",
        :role => "Role",
        :country => "Country",
        :year => "Year"
      ),
      Aircraft.create!(
        :name => "Name",
        :role => "Role",
        :country => "Country",
        :year => "Year"
      )
    ])
  end

  it "renders a list of aircrafts" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Role".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Year".to_s, :count => 2
  end
end
