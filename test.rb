require 'capybara/rspec/matchers'; 

have_css('dd', text: /#{row['Value']}/i)
