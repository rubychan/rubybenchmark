require 'helper'

class TestRubyBenchmark < Test::Unit::TestCase
  should "perform benchmark" do
    # lambda { RubyBenchmark.perform }.should_not raise_error
    RubyBenchmark.perform
  end
end
