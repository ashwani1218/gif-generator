use Mix.Config

config :giphy_ex, :api_key, "7ASZC8kgjM0k0l0dAIWMAPSxJtEXxtZ8"

config :maru, GifGenerator.API,
    adapter: Plug.Cowboy,
    plug: MyApp.API,
    scheme: :http,
    port: 8880