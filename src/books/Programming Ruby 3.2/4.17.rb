triangular = Enumerator.produce([1, 2]) do | number, count |
    [number + count, count + 1]
end.lazy.map { _1.first }

p triangular.first(5)
