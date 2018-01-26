defmodule Cqs.RecentMedia.Queries do
  import Ecto.Query

  alias Cqs.RecentMedia

  def all,
    do: RecentMedia

  def one(platform_name, influencer_handle) do
    from rm in all(),
      where: rm.influencer_handle == ^influencer_handle,
      where: rm.platform_name     == ^platform_name
  end
end
