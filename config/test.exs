use Mix.Config

config :cqs, Cqs.Repo,
  adapter:  Ecto.Adapters.SQL.Sandbox,
  database: "cqs_repo_test"
