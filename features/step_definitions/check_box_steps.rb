check_box_object = CheckBoxesPage.new

Given(/^I visit the checkbox page$/) do
  visit('/checkboxes')
end

When(/^I tick the first checkbox$/) do
  expect(page).to have_text('Checkboxes')
  #page.find(:xpath, @checkbox_one_xpath).click
  #check_box_object.click_checkbox_one
  check_box_object.click_element(check_box_object.checkbox_one_xpath, 'Checkbox 1')
end

Then(/^the first checkbox is ticked$/) do
  expect(page.find(:xpath, '//*[@id="checkboxes"]/input[1]').checked?).to equal true
end
