defmodule Cqs.RecentMedia.Mutator do
  alias Cqs.{Repo, RecentMedia.Changeset}

  def create(params) do
    params
    |> Changeset.build()
    |> Repo.insert()
  end
end
