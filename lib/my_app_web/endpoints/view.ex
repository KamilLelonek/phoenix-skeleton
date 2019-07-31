defmodule MyAppWeb.Endpoints.View do
  use MyAppWeb.View

  alias MyAppWeb.Router
  alias MyAppWeb.Router.Helpers

  @methods ~w(get post put patch delete)a

  def render("endpoints.json", %{conn: conn}) do
    Router.__routes__()
    |> Enum.filter(&allowed_method?/1)
    |> Enum.map(&format_route(&1, conn))
    |> Enum.sort_by(&sort_order/1)
  end

  defp allowed_method?(%{verb: method}),
    do: method in @methods

  defp format_route(%{helper: name, path: path, verb: method}, conn) do
    %{
      name => build_link(conn, path),
      :method => method
    }
  end

  defp build_link(conn, path),
    do: Helpers.url(conn) <> Helpers.path(conn, path)

  defp sort_order(%{method: method}),
    do: Enum.find_index(@methods, &(&1 == method))
end
