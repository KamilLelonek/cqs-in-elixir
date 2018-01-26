defmodule Cqs.RecentMedia do
  use Ecto.Schema

  schema "recent_media" do
    field :influencer_handle, :string
    field :platform_name,     :string
    field :media,             {:array, :map}
  end
end
