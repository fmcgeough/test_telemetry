defmodule TestTelemetry.Repo do
  use Ecto.Repo,
    otp_app: :test_telemetry,
    adapter: Ecto.Adapters.Postgres
end
