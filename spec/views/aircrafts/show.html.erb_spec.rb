require 'rails_helper'

RSpec.describe "aircrafts/show", type: :view do
  before(:each) do
    @aircraft = assign(:aircraft, Aircraft.create!(
      :name => "Name",
      :role => "Role",
      :country => "Country",
      :year => "Year"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Role/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/Year/)
  end
end
