defmodule SpotifyTest do
  use ExUnit.Case
  doctest Spotify

  alias Spotify.Credentials

  def paging(items) do
    %Spotify.Pagings.Paging{items: items, total: length(items)}
  end

  test "greets the world" do
    assert Spotify.hello() == :world
  end

  test "gets album tracks of album id" do
    {:ok, tracks} = Spotify.InMemory.get_album_tracks(%Credentials{}, "album_id", %{})
    assert tracks == paging([%Spotify.Tracks.TrackSimple{type: "track"}])
  end
end
