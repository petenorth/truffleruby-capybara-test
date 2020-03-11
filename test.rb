require 'capybara/rspec/matchers';
require 'capybara';
require 'cucumber/core/ast/data_table';
require 'cucumber/multiline_argument/data_table';

include Capybara::RSpecMatchers
include Capybara

node = Capybara.string <<-HTML
     <div id="uk-telephone-number" class="govuk-summary-list__row uk-telephone-number">
        <dd class="govuk-summary-list__value">
           It’s just an idea
        </dd>
      </div>
HTML

raw = %{
             | Heading                                 | Value                             |
             | What they want out of school experience | It’s just an idea                 |
             | Degree stage                            | Final year                        |
             | Degree subject                          | Bioscience                        |
             | Teaching stage                          | I want to be a teacher            |
             | Teaching subject                        | First choice: Biology             |
             | Teaching subject                        | Second choice: Biology            |
}

table=Cucumber::MultilineArgument::DataTable.from(raw)

table.hashes.each do |row|
  node.has_css?('dd', text: /#{row['Value']}/i)
end
