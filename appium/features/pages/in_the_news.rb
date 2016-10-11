class News

  attr_accessor :driver

  def content
    driver.find_element(:id, 'org.wikipedia.alpha:id/view_news_fullscreen_story_text')
    driver.find_element(:id, 'org.wikipedia.alpha:id/view_list_card_item_title')
    driver.find_element(:id, 'org.wikipedia.alpha:id/view_list_card_item_subtitle')
    driver.find_element(:id, 'org.wikipedia.alpha:id/view_list_card_item_menu')
    driver.find_element(:class_name, 'android.widget.ImageButton')
  end

  def back
    driver.find_element(:class_name, 'android.widget.ImageButton').click
  end

  def hide_widget
    driver.find_element(:id, 'org.wikipedia.alpha:id/view_list_card_header_menu').click
    driver.find_element(:id, 'org.wikipedia.alpha:id/title').click
  end

  def widget_removed
    element = element.find_element(:id, 'org.wikipedia.alpha:id/horizontal_scroll_list_item_text').displayed?
    puts 'element found!'
  rescue
    element = false
    puts 'element not found!'
  end
end