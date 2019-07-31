defmodule MyApp.Application do
  use Application

  def start(_type, _args),
    do: Supervisor.start_link(children(), opts())

  defp children do
    [
      MyApp.Domain.Repo,
      MyAppWeb.Endpoint
    ]
  end

  defp opts do
    [
      strategy: :one_for_one,
      name: MyApp.Supervisor
    ]
  end

  def config_change(changed, _new, removed) do
    MyAppWeb.Endpoint.config_change(changed, removed)

    :ok
  end
end
