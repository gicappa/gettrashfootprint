Given /^the following supermarket_creations:$/ do |supermarket_creations|
  SupermarketCreation.create!(supermarket_creations.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) supermarket_creation$/ do |pos|
  visit supermarket_creations_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following supermarket_creations:$/ do |expected_supermarket_creations_table|
  expected_supermarket_creations_table.diff!(tableish('table tr', 'td,th'))
end
