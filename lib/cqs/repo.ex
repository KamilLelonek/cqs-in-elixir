defmodule Cqs.Repo do
  use Ecto.Repo, otp_app: :cqs

  def child_spec(opts) do
    %{
      id:    __MODULE__,
      start: {__MODULE__, :start_link, [opts]},
      type:  :supervisor,
    }
  end

  def init(_, opts),
    do: {:ok, database_url(opts)}

  defp database_url(opts),
    do: Keyword.put(opts, :url, System.get_env("DATABASE_URL"))
end
