module Utils
  Dir.glob("#{__dir__}/utils/*") do |f|
    f.sub!('.rb', '')
    require f
  end
end
