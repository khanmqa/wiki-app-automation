class Pages

 def self.in_the_news
    @in_the_news ||= News.new
    @in_the_news
  end

  def self.home_screen
    @home_screen ||= HomeScreen.new
    @home_screen
  end

end
