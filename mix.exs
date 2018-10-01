defmodule Mehub.MixProject do
  use Mix.Project

  def project do
    [
      app: :mehub,
      version: "0.1.0",
      elixir: "~> 1.6",
      escript: escript(),
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  defp escript do
    [main_module: Mehub]
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
      {:httpoison, "~> 1.0"},
      {:poison, "~> 3.1"}
    ]
  end
end
