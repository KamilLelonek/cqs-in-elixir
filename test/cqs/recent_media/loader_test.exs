defmodule Cqs.RecentMedia.LoaderTest do
  use Cqs.Test.DatabaseCase, async: true

  alias Cqs.{RecentMedia, Repo}
  alias Cqs.RecentMedia.Loader

  describe "failure" do
    test "should not load any RecentMedia" do
      refute Loader.one("platform_name", "influencer_handle")
    end

    test "should return empty RecentMedia" do
      assert [] = Loader.all()
    end
  end

  describe "success" do
    setup :insert_recent_media

    test "should load a RecentMedia" do
      assert Loader.one("platform_name", "influencer_handle")
    end

    test "should load all RecentMedia" do
      assert [
        %RecentMedia{
          influencer_handle: "influencer_handle",
          platform_name:     "platform_name",
        }
      ] = Loader.all()
    end
  end

  defp insert_recent_media(_context) do
    recent_media = %RecentMedia{
      influencer_handle: "influencer_handle",
      platform_name:     "platform_name",
      media:             [],
    }

    Repo.insert!(recent_media)

    :ok
  end
end
