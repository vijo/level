defmodule Level do
  @moduledoc false

  use Application

  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  def start(_type, _args) do
    import Supervisor.Spec

    # Define workers and child supervisors to be supervised
    children = [
      # Start the Ecto repository
      supervisor(Level.Repo, []),
      # Start the endpoint when the application starts
      supervisor(LevelWeb.Endpoint, []),
      supervisor(Absinthe.Subscription, [LevelWeb.Endpoint])
      # Start your own worker by calling: Level.Worker.start_link(arg1, arg2, arg3)
      # worker(Level.Worker, [arg1, arg2, arg3]),
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Level.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
