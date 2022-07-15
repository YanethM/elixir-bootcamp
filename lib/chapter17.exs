for n <- [1, 2, 3, 4], do: n * n
for n <- 1..4, do: n * n

for n <- 0..5, rem(n, 3) == 0, do: n * n


values = [good: 1, good: 2, bad: 3, good: 4]
for {:good, n} <- values, do: n * n

for n <- 0..5, rem(n, 3) == 0, do: n * n
for {key, val} <- %{"a" => 1, "b" => 2}, into: %{}, do: {key, val * val}
