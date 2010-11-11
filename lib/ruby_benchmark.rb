require 'benchmark'

# Performs some Ruby benchmarks to calculate the Ruby benchmark index.
module RubyBenchmark
  class << self
    
    # Call this method to start the Benchmark.
    def perform
      puts 'Benchmark is running, please wait...'
      time = Benchmark.realtime { all_benchmarks }
      puts "-> Your machine scored #{calculate_index(time)} points on the Ruby benchmark [v0.1]."
    end
    
    protected
    
    def calculate_index time  # :nodoc:
      (1_000 / time).round
    end
    
    def all_benchmarks  # :nodoc:
      string_concat_fixnum_to_s
    end
    
    def string_concat_fixnum_to_s  # :nodoc:
      string = ''
      50_000.times { |i| string += i.to_s }
    end
    
  end
end