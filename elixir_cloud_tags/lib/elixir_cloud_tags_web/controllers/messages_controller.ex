defmodule ElixirCloudTagsWeb.MessagesController do
  use ElixirCloudTagsWeb, :controller

  alias ElixirCloudTags.Message
  alias ElixirCloudTags.Message.Create

  def create(conn, params) do
    params
    |> Create.call()
    |> handle_create(conn)
  end

  defp handle_create({:ok, %Message{} = message}, conn) do
    conn
    |> put_status(:created)
    |> render("create.json", message: message)
  end

  defp handle_create({:error, %{result: result, status: status}}, conn) do
    conn
    |> put_status(status)
    |> put_view(ElixirCloudTagsWeb.ErrorView)
    |> render("error.json", result: result)
  end
end
