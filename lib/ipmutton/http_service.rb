require 'active_support/core_ext'

module Ipmutton
  class HttpService

    def initialize(opts={})
    end

    def fetch_data
      clean_up_data(RestClient.get(ipmutton_address))
    end

    def clean_up_data(data)
      temp_hash = {}
      data.split("\n").each do |attr|
        /(.*) = (.*)/.match(attr) { |m|
          temp_hash[m[1].gsub(/ /,'_').downcase.underscore.to_sym] = m[2]
        }
      end
      temp_hash
    end
    private
    def ipmutton_address
      "http://ipmutton.com/text"
    end
  end
  
end
