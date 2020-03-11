require 'capybara/rspec/matchers'; 

include Capybara::RSpecMatchers

row_value = nil
have_css('dd', text: /#{row_value}/i)
