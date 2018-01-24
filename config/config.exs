use Mix.Config

config :cqs,
  ecto_repos: [Cqs.Repo]

config :cqs, Cqs.Repo,
  adapter:  Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  hostname: "localhost"

import_config "#{Mix.env()}.exs"
