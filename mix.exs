defmodule HipsterJesus.Mixfile do
  use Mix.Project

  def project do
    [app: :hipster_jesus,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: deps(),
     name: "HipsterJesus",
     source_url: "https://github.com/dnlsandiego/hipster_jesus"]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [applications: [:httpoison],
      extra_applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:httpoison, "~> 0.11.1"},
      {:poison, "~> 3.0"}]
  end

  defp description do
    """
    A simple wrapper for [HipsterJesus](http://hipsterjesus.com/), 
    a service that generates "lorem ipsum"-like text in hipster lingo.
    """
  end

  defp package do
    [
      name: :hipster_jesus,
      maintainers: ["Daniel Sandiego"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/dnlsandiego/hipster_jesus"}
    ]
  end
end
