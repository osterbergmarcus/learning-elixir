# http://elixir-lang.org/docs/stable/elixir/Path.html#content
# http://elixir-lang.org/docs/stable/elixir/File.html#content

defmodule InputOutput do
    def readFromSystem do
        name =
            IO.gets("what's your name? ")
            |> String.strip
            |> String.upcase

        case IO.getn("Read file y/n ? ", 1) do
            "y" ->
                IO.puts(file)
            "n" ->
                IO.puts("Why not? #{name}")
            _ ->
                IO.puts("Enter y or n")
        end
    end

    def file do
        path = Path.expand("src/hey.txt", __DIR__)
        case File.read(path) do
            {:ok, value} -> value
            {:error, _} -> IO.puts("Error: hey.txt file not found!")
        end
    end
end

InputOutput.readFromSystem
