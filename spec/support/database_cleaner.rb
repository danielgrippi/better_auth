RSpec.configure do |c|
  c.use_transactional_fixtures = false

  c.before :suite do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with :truncation
  end

  c.before :each do
    DatabaseCleaner.start
  end

  c.after :each do
    DatabaseCleaner.clean
  end
end
