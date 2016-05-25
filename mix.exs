defmodule EnvHelper.Mixfile do
  use Mix.Project

  def project do
    [app: :env_helper,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description,
     package: package,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  defp description do
    """
    A simple add on to make working with environment variables slightly easier.
    """
  end
  defp package do
   [
      maintainers: ["Paul Daigle"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/manheim/env_helper"}
    ]
  end
  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    []
  end
end