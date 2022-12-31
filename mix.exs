defmodule E4dsbook.MixProject do
  use Mix.Project

  @homepage_url ""
  @source_url ""
  @version "0.1.0"
  @name "Elixir For Data Science"

  def project do
    [
      app: :e4dsbook,
      version: @version,
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      name: @name,
      source_url: @source_url,
      homepage_url: @homepage_url,
      deps: deps(),
      docs: docs()
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
      {:ex_doc, "~> 0.27"}
    ]
  end

  defp docs do
    [
      main: "1-welcome",
      source_ref: "v#{@version}",
      # assets: "chapters/images",
      authors: ["Joey Bellerose, Phillip Ramon"],
      extra_section: "Chapters",
      api_reference: false,
      logo: "chapters/images/logo-e4ds.png",
      cover: "chapters/images/logo-e4ds.png",
      source_url: @source_url,
      extras: [
        "chapters/1-welcome.livemd",
        "chapters/2-introduction.livemd",
        "chapters/3-dataviz.livemd",
        "chapters/appendix.livemd"
      ],
      groups_for_extras: [
        "Exploratory Data Analysis": Path.wildcard("chapters/{3}*.livemd"),
        Appendicies: Path.wildcard("chapters/appendix.livemd")
      ]
    ]
  end
end
