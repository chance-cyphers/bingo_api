# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :bingo_api,
  ecto_repos: [BingoApi.Repo]

# Configures the endpoint
config :bingo_api, BingoApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "NAiUJYY6QTDcdH1Z9u/lqnlDG4jomaQvMobH4galDKULu0b51LE0oaQrp/Tbl4o9",
  render_errors: [view: BingoApiWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BingoApi.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
