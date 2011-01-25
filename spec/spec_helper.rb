require 'bundler'
Bundler.require

# require monglet
require File.dirname(__FILE__) + '/../lib/monglet'

# require bunch-o-stuff from lib
Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each {|file| require file }

Monglet::Config.setup do |config|
  config[:test] = { :name       => 'monglet_test',
                    :connection => 'mongodb://localhost' }
end

# Monglet::Config.setup(:test => { :name => 'monglet_test', :connection => 'mongodb://localhost'})
