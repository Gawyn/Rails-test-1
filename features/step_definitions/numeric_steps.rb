When /^I fill the form with some numerical value$/ do
  fill_in('number', :with => '112')
  click_button 'Go!'
end

Then /^I should see it written in English$/ do
  page.should have_content('one hundred and twelve')
end
