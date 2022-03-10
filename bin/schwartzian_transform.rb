require 'rbconfig'
require 'benchmark'

path = File.join(RbConfig::CONFIG['prefix'].to_s, '**', '*')

def files(path)
  Dir.glob(path).select {|f| File.file? f}
end

schwartzian = Proc.new do
  files(path).map {|f| [f, File.size(f)] }
    .sort_by {|f| f[1]}
    .map {|f| f[0]}
end

regular_sort = Proc.new do
  files(path).sort {|a,b| File.size(a) <=> File.size(b)}
end

regular_sort_by = Proc.new do
  files(path).sort_by {|a| File.size(a)}
end

Benchmark.bmbm do |x|
  x.report('regular_sort') do
    regular_sort.call
  end

  x.report('regular_sort_by') do
    regular_sort_by.call
  end

  x.report('schwartzian') do
    schwartzian.call
  end
end

# Perform the two file checks (File.file? and File.size) in the same block
# rather than chaining them when using the file method first.
method1 = Proc.new do
  files = Dir.glob(path).map do |f|
    if File.file?(f)
      [f, File.size(f)]
    else
      nil
    end
  end.compact.sort_by! {|a| a[1] }.map! {|f| f[0]}
end
