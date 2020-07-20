require 'kimurai'

class MissingRestaurantsSpider
  @name = "infinite_scroll_spider"
  @engine = :selenium_chrome
  @start_urls = ["https://www.fastfoodmenuprices.com/"]

  def parse(response, url:, data: {})

    pages = response.css('div.menu-all-restaurants-left-container a').each do |page|
      if page.text.strip == #missing restaurant name

      request_to :parse_repo_page, url: page["href"]
    end

end

MissingRestaurantsSpider.parse!(:parse, url "https://www.fastfoodmenuprices.com/all-restaurants/")
