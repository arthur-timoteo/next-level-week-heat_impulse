defmodule ElixirCloudTagsWeb.MessagesController do
  use ElixirCloudTagsWeb, :controller

  def create(conn, params) do
    IO.inspect(params)

    conn
    |> text("RECEBI A REQUISIÇÃO")
  end
end
