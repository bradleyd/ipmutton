# Ipmutton

This is a simple wrapper for the `great` [ipmutton](http://ipmutton.com) website

* Thanks Sumit!

## Installation

Add this line to your application's Gemfile:

    gem 'ipmutton'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ipmutton

## Usage

If you want to see the returned results you can call inspect on ipmutton instance.

```ruby
require 'ipmutton'

host_info = Ipmutton::HostInfo.new

host_info.inspect #=> {:ip_address=>"1.2.3.4", :port=>"39961", :reverse_dns=>"pool-1.2.3.4.tampfl.fios.verizon.net", :accept=>"*/*; q=0.5, application/xml", :accept_encoding=>"gzip, deflate", :user_agent=>"Ruby", :content_type=>"", :content_length=>""}

# or view them indiviually
host_info.ip_address #=> "1.2.3.4"
host_info.user_agent #=> "ruby"
host_info.port #=> "55555"
host_info.reverse_dns #=> "pool-1.2.3.4.tampfl.fios.verizon.net"
host_info.accept #=> "*/*; q=0.5, application/xml"
host_info.accept_encoding #=> "gzip, deflate"
host_info.content_type #=> ""
host_info.content_length #=> "" 

```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
