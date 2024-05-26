defmodule AdrenalineShared.MixProject do
  use Mix.Project

  def project do
    [
      app: :adrenaline_shared,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      dialyzer: [
        flags: [ :no_improper_lists],
        list_unused_filters: true
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      { :dialyxir, "~> 1.2", only: [ :dev, :test], runtime: false},
      { :extructure, "~> 1.0.0"},
      { :timex, "~> 3.0"}
    ]
  end
end
