import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :test_telemetry, TestTelemetry.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "test_telemetry_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :test_telemetry, TestTelemetryWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "x/1QqaCJk7k9T5S1kXqdj9lY9GaR1dF6KjVJocwU7AcVM9hND2lc7FErGtCglLvq",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
