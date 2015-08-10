defmodule ExSync.Mixfile do
  use Mix.Project

  def project do
    [ app: :exsync,
      version: "0.1.0",
      elixir: "~> 1.0",
      elixirc_paths: ["lib", "web"],
      deps: deps,
      description: "Yet another Elixir reloader.",
      source_url: "https://github.com/falood/exsync",
      package: package,
    ]
  end

  def application do
    [ mod: { ExSync, [] },
      applications: [:exfswatch, :logger],
    ]
  end

  defp deps do
    [ { :exfswatch, github: "VerKnowSys/exfswatch" } ]
  end

  defp package do
    %{ licenses: ["BSD 3-Clause"],
       links: %{"Github" => "https://github.com/falood/exsync"}
     }
  end
end
