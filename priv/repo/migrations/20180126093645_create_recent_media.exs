defmodule Cqs.Repo.Migrations.CreateRecentMedia do
  use Ecto.Migration

  def change do
    create table(:recent_media) do
      add :influencer_handle, :citext,        null: false
      add :platform_name,     :citext,        null: false
      add :media,             {:array, :map}, null: false
    end
  end
end
