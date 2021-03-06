defmodule ElixirPlugEcho.MixProject do
  use Mix.Project

  def project do
    [
      app: :elixir_plug_echo,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {ElixirPlugEcho, []}
      #:mod - specifies a module to invoke when the application is started. It must be in the format {Mod, args} where args is often an empty list. The module specified must implement the callbacks defined by the Application module.
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:plug_cowboy, "~> 2.0"},
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
