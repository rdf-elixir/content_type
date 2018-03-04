defmodule ContentType.MixProject do
  use Mix.Project

  @repo_url "https://github.com/marcelotto/content_type"

  @version "0.1.0"

  def project do
    [
      app: :content_type,
      version: @version,
      elixir: "~> 1.3",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # Hex
      package: package(),
      description: description(),

      # Docs
      name: "ContentType",
      docs: [
        main: "ContentType",
        source_url: @repo_url,
        source_ref: "v#{@version}",
        extras: ["README.md"]
      ]
    ]
  end

  defp description do
    """
    A parser for HTTP Content-Type headers.
    """
  end

  defp package do
    [
      licenses: ["Apache 2"],
      maintainers: ["Marcel Otto"],
      links: %{"GitHub" => @repo_url},
      files: ~w[lib src mix.exs README.md CHANGELOG.md LICENSE .formatter.exs]
    ]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.17.1", only: :dev, runtime: false},
      {:inch_ex, ">= 0.0.0", only: [:dev, :test]}
    ]
  end
end
