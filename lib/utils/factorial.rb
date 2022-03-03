module Utils
  def factorial_iterative(num)
    sum = 1
    1.upto(num) do |n|
      sum *= n
    end
    sum
  end

  def factorial_recursive(num)
    return 1 if num == 1

    num * factorial_recursive(num - 1)
  end
end

if $PROGRAM_NAME == __FILE__
  include Utils
  require 'benchmark'

  Benchmark.benchmark(Benchmark::CAPTION, 20, Benchmark::FORMAT, ">total:", ">avg:") do |x|
    it = x.report('Iterative') { factorial_iterative(100) }
    re = x.report('Recursive') { factorial_recursive(100) }
    [re + it, (re + it) / 2]
  end
end
