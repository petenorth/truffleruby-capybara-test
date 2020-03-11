require 'capybara/rspec/matchers'; 
require 'capybara';

include Capybara::RSpecMatchers
include Capybara

node = Capybara.string <<-HTML
     <div id="uk-telephone-number" class="govuk-summary-list__row uk-telephone-number">
        <dt class="govuk-summary-list__key">
          UK telephone number
        </dt>
        <dd class="govuk-summary-list__value">
          07123 456789
        </dd>
          <dd class="govuk-summary-list__actions">
            
          </dd>
      </div>
HTML

row_value = nil
node.have_css('dd', text: /#{row_value}/i)
