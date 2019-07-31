import Config

config :my_app, MyApp.Domain.Repo,
  username: System.get_env("PG_USERNAME"),
  password: System.get_env("PG_PASSWORD"),
  hostname: System.get_env("PG_HOSTNAME"),
  database: System.get_env("PG_DATABASE"),
  # or
  # url: System.get_env("DATABASE_URL"),
  port: System.get_env("PG_PORT"),
  pool_size: "PG_POOL_SIZE" |> System.get_env() |> String.to_integer()
