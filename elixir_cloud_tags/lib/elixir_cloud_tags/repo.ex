defmodule ElixirCloudTags.Repo do
  use Ecto.Repo,
    otp_app: :elixir_cloud_tags,
    adapter: Ecto.Adapters.Postgres
end
