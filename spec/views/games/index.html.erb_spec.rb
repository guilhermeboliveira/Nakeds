require 'spec_helper'

describe "games/index.html.erb" do
  before(:each) do
    assign(:games, [
      stub_model(Game,
        :name => "Name",
        :responsable => "Responsable",
        :place => "Place"
      ),
      stub_model(Game,
        :name => "Name",
        :responsable => "Responsable",
        :place => "Place"
      )
    ])
  end

  it "renders a list of games" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Responsable".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Place".to_s, :count => 2
  end
end
