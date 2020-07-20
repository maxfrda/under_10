require 'json'
require 'csv'
require 'kimurai'


class DamascusMenuSpider < Kimurai::Base

  @name = "infinite_scroll_spider"
  @engine = :selenium_chrome
  @start_urls = ["https://www.allmenus.com/"]


  def parse(response, url:, data: {})

    @damascus_restaurants = {restaurants: []}

    pages = response.css('div.description-container a').each do |page|
      request_to :parse_repo_page, url: absolute_url(page["href"], base: url)
    end

     File.open("damascus_restaurants.json","w") do |f|
      @damascus_restaurants.each do |restaurant|
        f.write(restaurant.to_json)
      end
    end

  end

  def parse_repo_page(response, url:, data: {})



    restaurant = response.css('div.restaurant-summary span').text.strip
    address = response.css('ul.info-list a').first.text.strip
    if restaurant.include? '&'
      restaurant.sub! '&', 'And'
    end


    if response.css("span.item-price")
      titles = response.css("span.item-title").map {|title| title.text.strip}
      prices = response.css("span.item-price").map {|price| price.text.strip}
    else
      titles = []
      prices = []
    end
    join(titles, prices, address, restaurant)
  end

  def join(titles, prices, address,restaurant )
    all_items = []
    i = 0
    if !titles.nil?
      while i < titles.count
        all_items << {name: titles[i], price: prices[i]}
        i += 1
      end
    else
      all_items = []
    end

    restaurant = {restaurant: restaurant, address: address, items: all_items}

    @damascus_restaurants[:restaurants] << restaurant
  end

  def show(restaurant)
    puts @damascus_restaurants
  end

end


DamascusMenuSpider.parse!(:parse, url: "https://www.allmenus.com/md/damascus/-/")


# restaurant1 = {name: "Quincy's", prices: [item1, item2, item3]}

# damascus_restaurants =[restaurant1, restaurant2]

# restaurants = [damascus_restaurants]
