Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }

RSpec.configure do |config|
  # ...
  config.include RequestSpecHelper, type: :request
  # ...
end