defmodule Cqs.RecentMedia.MutatorTest do
  use Cqs.Test.DatabaseCase, async: true

  alias Cqs.RecentMedia.Mutator

  test "should create a valid RecentMedia" do
    assert {:ok, _} = Mutator.create(%{
      platform_name:     "platform_name",
      influencer_handle: "influencer_handle",
      media:             [],
    })
  end

  test "should not create an invalid RecentMedia" do
    assert {:error, %{errors: errors}} = Mutator.create(%{})

    assert {:platform_name,     {"can't be blank", [validation: :required]}} in errors
    assert {:influencer_handle, {"can't be blank", [validation: :required]}} in errors
    assert {:media,             {"can't be blank", [validation: :required]}} in errors
  end
end
