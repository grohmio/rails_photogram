When(/^I am on the homepage$/) do
  visit root_path
end

Then(/^I should redirected to "(.*?)"$/) do |redirect_path|
  page.current_path.should == redirect_path
end

Then (/^I should see the "(.*?)" message$/) do |message|
  page.should have_content(message)
end

Then(/^I should see the "(.*?)" form$/) do |title|
  page.should have_content(title)
end

