defmodule Erlz.MixProject do
  use Mix.Project

  def project do
    [
      app: :erlz,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
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
      {:msgpax, "~> 2.3"},
      {:erlzmq, "~> 4.0", hex: :erlzmq_dnif},
      # {:erlzmq, path: "~/erlzmq"},
      {:telemetry, "~> 0.4 or ~> 1.0"},
      {:dialyxir, "~> 1.0", only: [:dev], runtime: false},
      {:gradualixir,
       github: "overminddl1/gradualixir", ref: "master", only: [:dev], runtime: false}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
