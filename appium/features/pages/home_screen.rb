class HomeScreen

  attr_accessor :driver

  def elements
    wait { text_exact 'In the news' }
    text_exact 'Featured article'
  end

  def select
    driver.find_element(:id, 'org.wikipedia.alpha:id/horizontal_scroll_list_item_text').click
  end


end
