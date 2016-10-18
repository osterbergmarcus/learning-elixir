# http://elixir-lang.org/getting-started/keywords-and-maps.html
# http://elixir-lang.org/docs/stable/elixir/Map.html

ExUnit.start

defmodule MapTest do
    use ExUnit.Case

    # When all the keys in a map are atoms instead of using
    # This syntax %{:a => 1, 2 => :b}
    # We can use a shorthand syntax %{a: 1, b: 2}
    def mapOfValues do
        %{a: "hey", b: "hello", c: "hej"}
    end

    test "Map.get" do
        assert Map.get(mapOfValues, :a) === "hey"
    end

    test "select" do
        assert mapOfValues[:a] === "hey"
    end

    test "Map.delete" do
        assert Map.delete(mapOfValues, :a) === %{b: "hello", c: "hej"}
    end

    test "Map.fetch" do
        assert Map.fetch(mapOfValues, :c) === {:ok, "hej"}
        assert Map.fetch(mapOfValues, :d) === :error
    end

    test "Add values from map to map" do
        values = Map.values(mapOfValues)
        assert Map.put(mapOfValues, :a, values) === %{a: ["hey", "hello", "hej"], b: "hello", c: "hej"}
    end
end
