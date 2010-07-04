require File.expand_path(
    File.join(File.dirname(__FILE__), %w[.. lib mm-money]))

require 'rubygems'
require 'mongo_mapper'
require 'fileutils'

Spec::Runner.configure do |config|
  # == Mock Framework
  #
  # RSpec uses it's own mocking framework by default. If you prefer to
  # use mocha, flexmock or RR, uncomment the appropriate line:
  #
  # config.mock_with :mocha
  # config.mock_with :flexmock
  # config.mock_with :rr

  log_dir = File.expand_path('../log', __FILE__)
  FileUtils.mkdir_p(log_dir) unless File.exist?(log_dir)
  logger = Logger.new(log_dir + '/spec.log')

  MongoMapper.connection = Mongo::Connection.new('127.0.0.1', 27017, :logger => logger)
  MongoMapper.database = "mm-money-test-#{RUBY_VERSION.gsub('.', '-')}"
  MongoMapper.database.collections.each { |c| c.remove }

end

