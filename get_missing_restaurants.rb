require 'json'

module GetMissing
  def fetch_nils
    #open json file
    file = File.read('damascus_restaurants.json')
    data_hash = JSON.parse(file)
    # puts data_hash
    #find every restaurant with empty values
    #return an array with the names of restaurants that have no prices

  end
end

class Restaurant
  include GetMissing
end


test1 = Restaurant.new
p test1.fetch_nils
