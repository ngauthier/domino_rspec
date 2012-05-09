require 'rubygems'
require 'bundler/setup'
Bundler.require
require 'domino_rspec'
require 'capybara/rspec'
Capybara.app = DominoRspec::Server
require 'support/dom'
RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
end
