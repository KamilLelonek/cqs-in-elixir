defmodule Cqs.RecentMedia.Loader do
  alias Cqs.{Repo, RecentMedia.Queries}

  def all,
    do: Repo.all(Queries.all)

  def one(platform_name, influencer_handle) do
    platform_name
    |> Queries.one(influencer_handle)
    |> Repo.one()
  end
end
