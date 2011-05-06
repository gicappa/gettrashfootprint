Given /^the following create_products:$/ do |create_products|
  CreateProduct.create!(create_products.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) create_product$/ do |pos|
  visit create_products_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following create_products:$/ do |expected_create_products_table|
  expected_create_products_table.diff!(tableish('table tr', 'td,th'))
end
