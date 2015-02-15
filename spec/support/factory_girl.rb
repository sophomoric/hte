require 'database_cleaner'

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods

  # config.before(:suite) do
  #   begin
  #     DatabaseCleaner.strategy = :deletion
  #     DatabaseCleaner.clean_with(:deletion)
  #     DatabaseCleaner.start
  #     FactoryGirl.lint
  #   ensure
  #     DatabaseCleaner.clean
  #   end
  # end
end
