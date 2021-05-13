module Utils
  def factorial(num)
    sum = 1
    1.upto(num) do |n|
      sum *= n
    end
    sum
  end
end
