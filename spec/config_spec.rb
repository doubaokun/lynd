$:<< File.join(File.dirname(__FILE__), '..', 'lib')
require 'lynd'

describe Lynd::Lyndconf do

  it "fails when passed non-existant file" do
    expect{Lynd::Lyndconf.new("/tmp/IDONOTEXIST")}.to raise_error
  end

  it "reads the port from the configuration file" do
    @config = Lynd::Lyndconf.new(File.join(File.dirname(__FILE__), '..', 'conf', 'lynd.conf.example'))
    @config.conf[:server][:port].should == 2112
  end

end
