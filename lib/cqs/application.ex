defmodule Cqs.Application do
  use Application

  def start(_type, _args),
    do: Supervisor.start_link(children(), opts())

  defp children do
    [
      Cqs.Repo,
    ]
  end

  defp opts do
    [
      strategy: :one_for_one,
      name:     Cqs.Supervisor,
    ]
  end
end
