use Mix.Config

config :cqs, Cqs.Repo,
  pool:     Ecto.Adapters.SQL.Sandbox,
  database: "cqs_repo_test"
