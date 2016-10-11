# http://elixir-lang.org/docs/master/ex_unit/ExUnit.html

ExUnit.start

defmodule MyTest do
    use ExUnit.Case

    test "the truth" do
        assert 1 + 1 === 2
    end
end
