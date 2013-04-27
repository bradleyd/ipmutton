require_relative 'test_helper'

class IpmuttonTest < MiniTest::Unit::TestCase
  
  def setup
    @ipmutton = Ipmutton::HostInfo.new
  end

  def test_should_respond_to_ip_address
    assert_respond_to(@ipmutton, :ip_address)
  end

  def test_should_respond_to_port
    assert_respond_to(@ipmutton, :port)
  end

  def test_should_respond_to_port
    assert_respond_to(@ipmutton, :reverse_dns)
  end

  def test_should_respond_to_user_agent
    assert_respond_to(@ipmutton, :user_agent)
  end

  def test_ip_address_not_nil
    refute_nil(@ipmutton.ip_address)
  end

  def test_user_agent_not_nil
    refute_nil(@ipmutton.user_agent)  
  end
end
