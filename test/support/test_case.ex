defmodule MyApp.TestCase do
  use ExUnit.CaseTemplate

  alias MyApp.Domain.Repo
  alias Ecto.Adapters.SQL.Sandbox

  using do
    quote do
      use Phoenix.ConnTest

      alias MyAppWeb.Router.Helpers, as: Routes
      alias MyApp.Factory

      @endpoint MyAppWeb.Endpoint

      import MyApp.TestCase
    end
  end

  setup tags do
    :ok = Sandbox.checkout(Repo)

    unless tags[:async] do
      Sandbox.mode(Repo, {:shared, self()})
    end

    {:ok, conn: Phoenix.ConnTest.build_conn()}
  end

  def read_fixture(entity, name, format \\ :strings) do
    "test/support/fixtures/#{entity}/#{name}.json"
    |> File.read!()
    |> Jason.decode!(keys: format)
  end
end
