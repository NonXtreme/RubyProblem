def solution(number)
    arr = []
    str = ""

    number.to_s.each_char do |item|
      arr << item
    end

    arr.sort! { |a,b| b <=> a }
    arr.each { |item| str << item }

    str
end

puts solution(453)
