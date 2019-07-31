import Config

config :my_app, MyApp.Domain.Repo,
  database: "my_app_test",
  pool: Ecto.Adapters.SQL.Sandbox

config :my_app, MyAppWeb.Endpoint,
  http: [port: 4002],
  server: false

config :logger, level: :warn
