defmodule ModulePlayground do
  import IO, only: [puts: 1]
  import Kernel, except: [inspect: 1]

  require Integer
  alias ModulePlayground.Misc.Util.Math, as: CustomMath

  def say_hello do
    inspect("HelloWorld")
  end

  def inspect(param1) do
    puts("Starting output")
    puts(param1)
    puts("Ending output")
  end

  def print_sum do
    CustomMath.add(1, 2)
  end

  def print_is_even(num) do
    is_num_even = Integer.is_even(num)
    puts("Is the number #{num} even? #{num} is#{(is_num_even && " ") || " not "}even.")
  end
end
