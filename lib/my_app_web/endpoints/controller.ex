defmodule MyAppWeb.Endpoints.Controller do
  use MyAppWeb.Controller

  alias MyAppWeb.Endpoints.View

  def index(conn, _params) do
    conn
    |> put_status(200)
    |> put_view(View)
    |> render("endpoints.json")
  end
end
