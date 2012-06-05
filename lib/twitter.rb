class Twitter
  include HTTParty
  base_uri 'twitter.com'
  
  #Get the number of results that are "happy" for a particular location, use lat and lng
  def self.get_happiness(location)
    number = 0
    next_page = "/search.json?q=happy&rpp=100&geocode=#{location},25mi"
    while next_page
      response = get(next_page)
      number += response["results"].length
      next_page = response["next_page"]
    end
    number
  end
  def self.get_happiness_raw(location)
    get("/search.json?q=happy&rpp=100&geocode=#{location},25mi")
  end
end