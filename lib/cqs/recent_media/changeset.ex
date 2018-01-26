defmodule Cqs.RecentMedia.Changeset do
  import Ecto.Changeset

  alias Cqs.RecentMedia

  @params_required ~w(influencer_handle platform_name media)a
  @params_optional ~w()a

  def build(schema \\ %RecentMedia{}, params) do
    schema
    |> cast(params, @params_required ++ @params_optional)
    |> validate_required(@params_required)
  end
end
