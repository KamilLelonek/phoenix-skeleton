defmodule MyAppWeb.Router do
  use Phoenix.Router
  use Plug.ErrorHandler

  alias MyAppWeb.Endpoints.Controller, as: EndpointsController

  pipeline :api do
    plug :accepts, ["json"]
  end

  get("/", EndpointsController, :index, as: :endpoints)

  scope "/", MyAppWeb do
    pipe_through :api
  end
end
