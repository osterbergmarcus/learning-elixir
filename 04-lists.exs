# http://elixir-lang.org/getting-started/basic-types.html
# http://elixir-lang.org/docs/stable/elixir/Enum.html#content

ExUnit.start

defmodule ListTest do
    use ExUnit.Case

    def listOfNumbers do
        [1,3,5,7,9]
    end

    test "map" do
        result = Enum.map(listOfNumbers, fn(element) -> element*2 end)
        assert result === [2,6,10,14,18]
    end

    test "filter" do
        result = Enum.filter(listOfNumbers, fn(element) -> element > 5 end)
        assert result === [7,9]
    end

    test "reduce" do
        result = Enum.reduce(listOfNumbers, fn(num, acc) -> num + acc end)
        assert result === 25
    end

    test "head and tail" do
        [head | tail] = listOfNumbers
        assert head === 1
        assert tail === [3,5,7,9]
    end

    test "concat and reverse" do
        result =
            Enum.concat(listOfNumbers, ["Concat and Reverse"])
            |> Enum.reverse

        assert result === ["Concat and Reverse", 9, 7, 5, 3, 1]
    end
end
