module Utils
  def lcm_manual(num1, num2)
    iterator = 2
    loop do
      break if (iterator % num1).zero? && (iterator % num2).zero?

      iterator += 1
    end
    iterator
  end

  def gcd_manual(num1, num2)
    save = Hash.new do |h, k|
      h[k] = []
    end

    [num1, num2].each do |num|
      start = 1
      stop = num / 2 + 1

      start.upto(stop) do |i|
        save[num] << i if num % i == 0
      end

      save[num] << num
    end

    greatest = 1
    save[num1].each do |n|
      greatest = n if save[num2].include? n
    end

    greatest
  end
end

if __FILE__ == $PROGRAM_NAME
  include Utils

  print 'GCD of 100, 150 : '
  num = gcd_manual(100, 150)
  puts num

  print 'LCM of 100, 150: '
  num = lcm_manual(100, 150)
  puts num
end
