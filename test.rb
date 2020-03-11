require 'capybara/rspec/matchers';
require 'capybara';
require 'cucumber/ast/table';

include Capybara::RSpecMatchers
include Capybara

node = Capybara.string <<-HTML
     <div id="uk-telephone-number" class="govuk-summary-list__row uk-telephone-number">
        <dd class="govuk-summary-list__value">
           It’s just an idea
        </dd>
      </div>
HTML

table=Cucumber::Ast::Table.initialize([['a', 'It’s just an idea']])
table.hashes.each do |row|
  puts row['Value']
  nodetest.has_css?('dd', text: /#{row['Value']}/i)
end
