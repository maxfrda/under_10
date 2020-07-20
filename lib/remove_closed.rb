require_relative '../ruby/yelp_searcher.rb'

class StoreRemover

  def initialize(city, state)
    @city = city
    @state = state
    @all = []
  end

  def fetch_yelp_results
    #run yelp restaurant search with damascus
    query = "#{@city}, #{@state}"

    yelp = YelpSearcher.new
    restaurants = yelp.search('restaurant', query)
    cafes = yelp.search('cafe', query)
    @all << restaurants << cafes
    combine(@all)
    # names = restaurants.map {|restaurant| restaurant["name"]}
    # cafes.each {|cafe| names << cafe["name"]}
    # p names
  end

  def combine(array)
    yelp_results = []
    array.map do |item|
      item['businesses'].each do |business|
        if business["location"]["city"] == @city
          yelp_results << {restaurant: business["name"], address: business["location"]["address1"]}
        end
      end
    end
    compare(yelp_results)
  end

  def compare(results)
    file1 = File.join(__dir__, '../json/damascus_restaurants.json')
    file1 = File.read(file1)
    all_menu = JSON.parse(file1)

    puts "YELP: #{results}\n"
    puts "ALL_MENU: #{all_menu}"

  end

  def remove_closed(yelp)
    #match yelp results with all menu results
    #remove the ones that don't match
  end

  def save
    #save a new hash to json that removes the results
  end
end

damascus = StoreRemover.new('Damascus', 'MD')

damascus.fetch_yelp_results
