defmodule BingoApi.Repo do
  use Ecto.Repo,
    otp_app: :bingo_api,
    adapter: Ecto.Adapters.Postgres
end
