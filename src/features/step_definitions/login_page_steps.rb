Given(/^there's a form named "(.*?)"$/) do |formname|
  @login_form_name = formname
end

When(/^I am on the loginpage$/) do
  visit root_path
end

Then(/^I should redirected to "(.*?)"$/) do |redirect_path|
  page.current_path.should == redirect_path
  #page.current_path == redirect_path
end

Then(/^I should see the "(.*?)" form$/) do |title|
  page.should have_content(title)
  # this should also work
  # page.should have_content(@login_form_name)
end

When(/^I press "(.*?)"$/) do |button|
  click_button(button)
end

Then (/^I should see the "(.*?)" message$/) do |invalid_email_paswd_msg|
  page.should have_content(invalid_email_paswd_msg)
end
