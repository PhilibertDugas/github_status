# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :elt,
  ecto_repos: [Elt.Repo]

# Configures the endpoint
config :elt, Elt.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "sCpnUZglgb0S6tfx63B3Faqi5ZmO2cgUHlFcU5vajFuR8KwutrwUYyd2tLOGZX8s",
  render_errors: [view: Elt.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Elt.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
