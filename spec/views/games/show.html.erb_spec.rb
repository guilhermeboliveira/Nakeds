require 'spec_helper'

describe "games/show.html.erb" do
  before(:each) do
    @game = assign(:game, stub_model(Game,
      :name => "Name",
      :responsable => "Responsable",
      :place => "Place"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Responsable/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Place/)
  end
end
