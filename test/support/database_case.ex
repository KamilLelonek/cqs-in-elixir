defmodule Cqs.Test.DatabaseCase do
  use ExUnit.CaseTemplate

  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Cqs.Repo)

    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(Cqs.Repo, {:shared, self()})
    end

    :ok
  end
end
