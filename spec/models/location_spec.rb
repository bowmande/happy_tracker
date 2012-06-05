require 'spec_helper.rb'

describe Location do
  describe "initializing" do
    let(:location) { Location.new("Louisville, KY")}
    it "should get the geolocation" do
      location.lat.should eq(38.2526647)
      location.lng.should eq(-85.7584557)
    end
    it "should set the name" do
      location.name.should eq("Louisville, KY")
    end
    it "should get the happiness" do
      location.happiness.should eq(106)
    end
  end
end