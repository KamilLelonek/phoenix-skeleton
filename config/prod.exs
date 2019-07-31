import Config

config :my_app, MyAppWeb.Endpoint,
  http: [port: {:system, "PORT"}],
  url: [host: {:system, "HOST"}, port: 80],
  server: true

config :my_app, MyApp.Domain.Repo, load_from_system_env: true
