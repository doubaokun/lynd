$:<< File.join(File.dirname(__FILE__), '..', 'lib')
require 'lynd'

describe Lynd::Service do

  before(:all) do
    @config = Lynd::Lyndconf.new(File.join(File.dirname(__FILE__), '..', 'conf', 'lynd.conf.example'))
    @serv = Lynd::Service.new(@config.rules)
    @req = {"host_name"=>"host1", "alert_status"=>"CRITICAL", "service_name"=>"example_service", "service_group"=>"group1"}
  end

  it "creates an object with a config" do
    @serv.methods.should include :process_event
  end

  it "does some stuff" do
    @serv.process_event @req
  end

end
