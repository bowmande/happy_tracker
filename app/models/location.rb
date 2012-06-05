class Location
  attr_accessor :name, :lat, :lng, :happiness
  
  def initialize(name)
    @name = name
    @lat, @lng = Geocoder.coordinates(name)
    get_happiness
  end
  
  def self.happiest(locations)
    locations.max { |a,b| a.happiness <=> b.happiness }
  end
  
  def get_happiness
    @happiness = Twitter.get_happiness(loc)
  end
  
  def loc
    "#{@lat},#{@lng}"
  end
  
  def self.load(params)
    locations = []
    if params
      locations << Location.new(params[:location_1])
      locations << Location.new(params[:location_2])
    end
    locations
  end
end