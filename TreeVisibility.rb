class Tree
  attr_accessor :x, :l, :r
end

def solution(t)
    return countVisible(t,-100001)
end

def countVisible(t,m)
    if t.nil?
        return 0
    end
    t_m=m
    t_n=0
    if t.x>=t_m
        t_m=t.x
        t_n+=1
    end
    return t_n+countVisible(t.l,t_m)+countVisible(t.r,t_m)
end

def parseTree(a)
    if(a.nil?)
        return nil
    end
    root=Tree.new
    root.x=a[0]
    root.l=parseTree(a[1])
    root.r=parseTree(a[2])
    return root
end

puts solution(parseTree([5, [3, [20, nil, nil], [21, nil, nil]], [10, [1, nil, nil], nil]]))
puts solution(parseTree([8, [2, [8, nil, nil], [7, nil, nil]], [6, nil, nil]]))