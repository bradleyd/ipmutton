require "rest-client"
module Ipmutton
  class HostInfo
    def initialize(opts={})
      @data = HttpService.new
      build_host_info
    end

    private
    # @private
    def build_host_info
      @data.fetch_data.each do |k,v|
        self.class.send(:define_method, k) { v }
      end
    end
  end
end
