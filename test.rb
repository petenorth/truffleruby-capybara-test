require 'capybara/rspec/matchers'; 

row_value = 'hello'
have_css('dd', text: /#{row_value}/i)
