import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :lv_example, LvExampleWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "4Kfi/HZISlltERmm8INQxPwQz2aUqqmIi4I9pir21+Z7QT0k1cPXBXf2g3jqUk4U",
  server: false

# In test we don't send emails.
config :lv_example, LvExample.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
