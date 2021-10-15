defmodule ExSqlean.Extensions do
  def all do
    pattern = Path.join([:code.priv_dir(:ex_sqlean), "darwin-amd64", "*.dylib"])

    Path.wildcard(pattern)
    |> Enum.map(fn x -> String.replace(x, ".dylib", "") end)
    |> Enum.map(fn x -> Path.basename(x) end)
  end
end
