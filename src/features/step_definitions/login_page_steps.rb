Given(/^there's a form named "(.*?)"$/) do |formname|
  @login_form_name = formname
end

When(/^I am on the loginpage$/) do
  visit root_path + "/users/sign_in"
end

Then (/^I should not see the "(.*?)" message$/) do |message|
  page.should_not have_content(message)
end

#Then(/^I should see the "(.*?)" form$/) do |title|
#  page.should have_content(title)
#end

When(/^I press "(.*?)"$/) do |button|
  click_button(button)
end

#Then (/^I should see the "(.*?)" message$/) do |message|
#  page.should have_content(message)
#end
