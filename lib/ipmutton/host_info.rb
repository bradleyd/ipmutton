require "rest-client"
module Ipmutton
  class HostInfo
    def initialize(opts={})
      @data = HttpService.new.fetch_data
      build_host_info
    end

    # @return [Hash]
    def inspect
      @data
    end

    private
    # @private
    def build_host_info
      @data.each do |k,v|
        self.class.send(:define_method, k) { v }
      end
    end
  end
end
