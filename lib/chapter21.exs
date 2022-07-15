String.to_charlist("Ø")
:binary.bin_to_list("Ø")
:io.format("Pi is approximately given by:~10.3f~n", [:math.pi()])
to_string(:io_lib.format("Pi is approximately given by:~10.3f~n", [:math.pi()]))

Base.encode16(:crypto.hash(:sha256, "Elixir"))

def application do
  [extra_applications: [:crypto]]
end

# Trabajo con grafos
digraph = :digraph.new()
coords = [{0.0, 0.0}, {1.0, 0.0}, {1.0, 1.0}]
[v0, v1, v2] = for c <- coords, do: :digraph.add_vertex(digraph, c)
:digraph.add_edge(digraph, v0, v1)
:digraph.add_edge(digraph, v1, v2)
:digraph.get_short_path(digraph, v0, v2)

#crear tabla que contiene tuplas
#las ets estan protegdas, cualquier proceso las puede leer pero no escribir en ellas
table = :ets.new(:ets_test, [])
:ets.insert(table, {"China", 1_374_000_000})
:ets.insert(table, {"India", 1_284_000_000})
:ets.insert(table, {"USA", 322_000_000})
:ets.i(table)

# Colas (FIFO)
q = :queue.new
q = :queue.in("A", q)
q = :queue.in("B", q)
{value, q} = :queue.out(q)
{value, q} = :queue.out(q)
{value, q} = :queue.out(q)

# Num aleatorios
:rand.uniform()
_ = :rand.seed(:exs1024, {123, 123534, 345345})
:rand.uniform()
:rand.uniform(6)
