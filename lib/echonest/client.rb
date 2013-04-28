require 'echonest/configurable'
module Echonest
  class Client
    include Echonest::Configurable
    # Initializes a new Client object
    #
    # @param options [Hash]
    # @return [Echonest::Client]
    def initialize(options={})
      Echonest::Configurable.keys.each do |key|
        instance_variable_set(:"@#{key}", options[key] || Echonest.instance_variable_get(:"@#{key}"))
      end
    end

  end
end