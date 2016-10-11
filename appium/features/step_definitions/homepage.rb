Given(/^I have launched the Wikipedia app$/) do
  #app should launch when tests start running
end

Given(/^I am on home screen$/) do
  Pages.home_screen.elements

end

When(/^I select on In the News content$/) do
  Pages.home_screen.select
end

Then(/^I should see relevant content$/) do
  Pages.in_the_news.content
  reset
end

And(/^I press Back$/) do
  Pages.in_the_news.back
end

Then(/^I should home screen$/) do
  Pages.home_screen.elements
end

When(/^I hide the In the News widget$/) do
  Pages.in_the_news.hide_widget
end

Then(/^I should I should not see the widget$/) do
Pages.in_the_news.widget_removed
  driver_quit
end