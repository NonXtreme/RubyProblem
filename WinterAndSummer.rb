def solution(n)
    minTi = n.index(n.min)
    borderi = minTi

    while n[0, borderi + 1].max >= n[borderi + 1, n.size].min
      borderi = borderi + 1 + n[borderi + 1, n.size].index(n[borderi+1, n.size].min)
    end

    borderi+1
end
