# https://elixirschool.com/lessons/basics/functions/
# http://elixir-lang.org/getting-started/case-cond-and-if.html

defmodule Fib do
    # Using pattern matching
    def fib(0) do 0 end

    def fib(1) do 1 end

    # Using guards
    def fib(n) when n > 1, do: fib(n-1) + fib(n-2)
end

ExUnit.start

defmodule FibonacciTest do
    use ExUnit.Case

    import Fib

    test "Fibonacci" do
        assert fib(10) === 55
    end
end
