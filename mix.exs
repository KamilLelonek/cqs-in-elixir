defmodule Cqs.Mixfile do
  use Mix.Project

  def project do
    [
      app:             :cqs,
      version:         "0.1.0",
      elixir:          "~> 1.5",
      start_permanent: Mix.env() == :prod,
      deps:            deps(),
      elixirc_paths:   elixirc_paths(Mix.env()),
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {Cqs.Application, []},
    ]
  end

  defp deps do
    [
      {:postgrex, "~> 0.13"},
      {:ecto, "~> 2.1"},
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_),     do: ["lib"]
end
