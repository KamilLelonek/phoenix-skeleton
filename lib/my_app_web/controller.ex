defmodule MyAppWeb.Controller do
  defmacro __using__(_opts) do
    quote do
      use Phoenix.Controller,
        namespace: MyAppWeb
    end
  end
end
