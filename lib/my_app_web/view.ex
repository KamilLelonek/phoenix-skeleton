defmodule MyAppWeb.View do
  defmacro __using__(_opts) do
    quote do
      use Phoenix.View,
        root: "lib/my_app_web/templates",
        namespace: MyAppWeb
    end
  end
end
