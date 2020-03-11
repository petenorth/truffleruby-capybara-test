require 'capybara/rspec/matchers'; 

include Capybara::RSpecMatchers

row_value = 'hello'
have_css('dd', text: /#{row_value}/i)
