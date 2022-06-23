Dir.chdir(File.dirname(__FILE__)) do
  Dir["**/*.rb"].each do |f|
    next if f.match?("algorithms.rb")
    require_relative f
  end
end
