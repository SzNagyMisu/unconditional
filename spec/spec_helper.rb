require './app/unconditional'
require './spec/person'

RSpec.configure do |config|
  config.formatter = :doc
  config.alias_example_to :he
end
