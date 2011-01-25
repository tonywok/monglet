require File.expand_path(__FILE__) + '/../monglet/validations'
require File.expand_path(__FILE__) + '/../monglet/base_model'

module Monglet
  def self.database
    conn = Mongo::Connection.from_uri(Config.settings[:test][:connection])
    conn.db(Config.settings[:test][:name])
  end

  module Config
    extend self

    attr_accessor :settings
    @settings = {}

    def setup(options = nil)
      if block_given?
        yield(@settings)
      else
        @settings = options
      end
    end
  end
end
