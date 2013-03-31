require 'spec_helper'

describe "bands/edit" do
  before(:each) do
    @band = assign(:band, stub_model(Band,
      :name => "MyString"
    ))
  end

  it "renders the edit band form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bands_path(@band), :method => "post" do
      assert_select "input#band_name", :name => "band[name]"
    end
  end
end
