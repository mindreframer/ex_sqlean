defmodule ExSqlean.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_sqlean,
      version: "0.8.5",
      elixir: "~> 1.12",
      deps: deps(),
      package: package(),
      source_url: "https://github.com/mindreframer/ex_sqlean",
      description: "Precompiled SQLite extensions, to be used with `exqlite`.",
      start_permanent: Mix.env() == :prod
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {ExSqlean.Application, []}
    ]
  end

  defp package() do
    [
      # These are the default files included in the package
      files: ~w(lib priv .formatter.exs mix.exs README* LICENSE* CHANGELOG*),
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/mindreframer/ex_sqlean"}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end
end
