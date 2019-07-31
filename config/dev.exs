import Config

config :my_app, MyApp.Domain.Repo,
  database: "my_app_dev",
  show_sensitive_data_on_connection_error: true

config :my_app, MyAppWeb.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  watchers: []

config :phoenix, :plug_init_mode, :runtime
