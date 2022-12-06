defmodule Sample.Enum do
  import IO, only: [puts: 1]
  # quando criamos 2 funcoes c o mesmo nome,
  # uma c 1 parametro obrigatorio e um c 1 parametro obrigatorio e outro default,
  # temos q declarar a funcao c parametro
  # default dps da q tem 2 parametros obrigatorios

  def first(list, val \\ nil)
  def first([], val), do: val
  def first([head | _], _), do: head

  def add(list, val \\ 0) do
    trace(val)
    [val | list]
  end

  defp trace(str) do
    puts("Params passed was #{str}")
  end
end
