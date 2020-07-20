require 'bundler/setup'
require 'json'
  # restaurants = {restaurants: {a: 1, b: {c: 2, d:2}},


  damascus_restaurants = { restaurants: [{restaurant: "Domino's Pizza", items: [{name: "Wisconsin 6 Cheese", price: ""},
    {name: "Honolulu Hawaiian Pizza", price: ""}, {name: "Philly Cheese Steak Pizza", price: ""},
    {name: "Pacific Veggie Pizza", price: ""}, {name: "Cali Chicken Bacon Ranch Pizza", price: ""},
    {name: "Fiery Hawaiian Pizza", price: ""}, {name: "Buffalo Chicken Pizza", price: ""},
    {name: "Memphis BBQ Chicken Pizza", price: ""}, {name: "Spinach and Feta", price: ""},
    {name: "Tuscan Salami & Roasted Veggie", price: ""}, {name: "Italian Sausage & Pepper Trio", price: ""},
    {name: "Chicken Alfredo", price: ""}, {name: "Italian Sausage Marinara", price: ""},
    {name: "Chicken Carbonara", price: ""}, {name: "3 Cheese Mac-N-Cheese", price: ""},
    {name: "Pasta Primavera", price: ""}, {name: "Build your Own Pasta", price: ""},
    {name: "Extravaganzza Feast", price: ""}, {name: "Meatzza Feast", price: ""},
    {name: "Deluxe Feast", price: ""}, {name: "Bacon Cheeseburger Feast", price: ""},
    {name: "Americas Favorite Feast", price: ""}, {name: "Ultimate Pepperoni Feast",price: ""},
    {name: "Italian Sausage and Peppers", price: ""},
    {name: "Buffalo Chicken", price: ""}, {name: "Chicken Habanero", price: ""},
    {name: "Mediterranean Veggie", price: ""}, {name: "Philly Cheese Steak", price: ""},
    {name: "Chicken Bacon Ranch", price: ""}, {name: "Italian", price: ""}, {name: "Chicken Parm", price: ""},
    {name: "Hand Tossed", price: ""}, {name: "Deep Dish", price: ""}, {name: "Crunchy Thin", price: ""},
    {name: "Brooklyn Style", price: ""}, {name: "New Boneless Chicken", price: ""},
    {name: "New Chicken Wings", price: ""}, {name: "Breadsticks", price: ""},
    {name: "Cheesy Bread", price: ""}, {name: "Cinna Stix", price: ""},
    {name: "Chocolate Lava Crunch Cakes", price: ""}, {name: "Cinna Stix", price: ""},
    {name: "Coke", price: ""}, {name: "Coke Zero", price: ""}, {name: "Diet Coke", price: ""},
    {name: "Sprite", price: ""}]},
    {restaurant: "Jerry's Subs & Pizza", items: []}] }

    # puts restaurants[:restaurants]

    # damascus_restaurants[:restaurants].each do |restaurant|
    #   if restaurant[:items].empty?
    #     puts restaurant[:restaurant]
    #   end
    # end


  test1 = {restaurants: []}
  restaurant = {restaurant: "Jerry's Subs & Pizza", items: []}
  restaurant1 = {restaurant: "Domino's Pizza", items: [{name: "Wisconsin 6 Cheese", price: ""}]}
  test1[:restaurants] << restaurant << restaurant1

  # puts test1

    # File.open("json_test.json","w") do |f|
    #   test1.each do |restaurant|
    #     f.write(restaurant.to_json)
    #   end
    # end


  file1 = File.join(__dir__, 'damascus_restaurants.json')
  file1 = File.read(file1)
  my_hash1 = JSON.parse(file1)


  yelp = [{restaurant: "Domino's Pizza", address: , "Ledo Pizza", "Subway", "Cajun"]


  new_hash = my_hash1[1].filter_map do |r|
    # puts r['restaurant']
      if yelp.include? r["restaurant"]
        r["restaurant"]
      end
  end


puts new_hash
