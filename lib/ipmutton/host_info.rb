require "rest-client"
module Ipmutton
  class HostInfo
    attr_reader :data
    def initialize(opts={})
      @data = HttpService.new
      build_host_info
    end

    private
    def build_host_info
      @data.fetch_data.each do |k,v|
        self.class.send(:define_method, k) { v }
      end
    end
  end
end
