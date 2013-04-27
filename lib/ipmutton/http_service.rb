require 'active_support/core_ext'

module Ipmutton
    # http service object
    # builds a has from string returned from website
    # the string returned is parsed on `=`
    # @todo needs some error handling
  class HttpService
    def initialize(opts={})
      @remote_ip_address = "http://ipmutton.com/text"
    end

    # @return [Hash] of meta-data from ipmutton's site
    # @example
    #    {:ip_address=>"1.2.3.4", :port=>"39631", 
    #    :reverse_dns=>"pool-1.2.3.4.tampfl.fios.verizon.net", 
    #    :accept=>"*/*; q=0.5, application/xml", 
    #    :accept_encoding=>"gzip, deflate", :user_agent=>"Ruby", 
    #    :content_type=>"", :content_length=>""} 
    def fetch_data
      clean_up_data(RestClient.get(@remote_ip_address))
    end

    private
    # @private
    def clean_up_data(data)
      temp_hash = {}
      data.split("\n").each do |attr|
        /(.*) = (.*)/.match(attr) { |m|
          temp_hash[m[1].gsub(/ /,'_').downcase.underscore.to_sym] = m[2]
        }
      end
      temp_hash
    end

  end
end
