defmodule ElixirCloudTags.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      ElixirCloudTags.Repo,
      # Start the Telemetry supervisor
      ElixirCloudTagsWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: ElixirCloudTags.PubSub},
      # Start the Endpoint (http/https)
      ElixirCloudTagsWeb.Endpoint,
      # Start a worker by calling: ElixirCloudTags.Worker.start_link(arg)
      # {ElixirCloudTags.Worker, arg}
      ElixirCloudTags.Scheduler
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ElixirCloudTags.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    ElixirCloudTagsWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
