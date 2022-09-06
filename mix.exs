defmodule Fontawesome.MixProject do
  use Mix.Project

  @url "https://github.com/braindeaf/fontawesome-elixir"

  def project do
    [
      app: :fontawesome,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package()
    ]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.21", only: :docs}
    ]
  end

  defp package do
    %{
      licenses: ["MIT"],
      maintainers: ["Rob Lacey"],
      links: %{"GitHub" => @url},
      files: ~w(mix.exs LICENSE README.md fontawesome.sass sass)
    }
  end
end
