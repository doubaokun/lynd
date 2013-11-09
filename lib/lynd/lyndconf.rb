module Lynd
  require 'yaml'
  class Lyndconf

    attr_reader :conf

    def initialize(config_file)
      begin
        @conf = YAML::load(File.read config_file)
      rescue Exception => e
        raise e.message
      end
    end

    def rules
      @conf[:rules]
    end

  end
end
