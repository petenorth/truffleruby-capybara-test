require 'capybara/rspec/matchers'; 
require 'capybara';

include Capybara::RSpecMatchers
include Capybara

node = Capybara.string <<-HTML
     <div id="uk-telephone-number" class="govuk-summary-list__row uk-telephone-number">
        <dd class="govuk-summary-list__value">
           Itâ€™s just an idea
        </dd>
      </div>
HTML

row_value = nil
node.have_css('dd', text: /#{row_value}/i)
