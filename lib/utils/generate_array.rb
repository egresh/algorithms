module Utils
  def generate_array(elements: 10, max_element_size: 100)
    array = []
    1.upto(elements) do |a|
      array << rand(max_element_size)
    end
    array
  end
end
