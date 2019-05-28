def solution(n)
    a=[]
    n.to_s.each_char do |c|
        a.push(c.to_i)
    end
    a.sort!{|a,b| b<=>a}
    s=""
    a.each do |i|
        s+=i.to_s
    end
    s.to_i
end

puts solution(453)