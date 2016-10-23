# http://elixir-lang.org/getting-started/structs.html

# Struct has replaced Elixir records
# http://elixir-lang.org/blog/2014/04/21/elixir-v0-13-0-released/#maps,-structs-and-the-future
# http://elixir-lang.org/docs/stable/elixir/Record.html#content


ExUnit.start

# A struct is a tagged map that allows developers to provide default values for
# keys, tags to be used in polymorphic dispatches and compile time assertions
# defstruct/1 is a convenience macro to define a struct

defmodule User do
  defstruct email: nil, password: nil
end

defmodule StructTest do
    use ExUnit.Case

    def sample do
        %User{email: "elixir@sample.com", password: "struct"}
    end

    test "defstruct" do
        assert struct(sample) === %User{email: "elixir@sample.com", password: "struct"}
    end

    test "property" do
        assert sample.email === "elixir@sample.com"
    end

    test "update" do
        newSample = %User{sample | password: "STRUCT"}
        assert newSample === %User{email: "elixir@sample.com", password: "STRUCT"}
    end

    test "update property using struct function" do
        assert struct(sample, %{password: "STRUCT"}) === %User{email: "elixir@sample.com", password: "STRUCT"}
    end
end
