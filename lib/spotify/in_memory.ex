defmodule Spotify.InMemory do
  @moduledoc """
    An in-memory version of a spotify client.
  """
  @behaviour Spotify.SpotifyAPI

  alias Spotify.Credentials

  def get_album_tracks(%Credentials{}, _id, %{} = _params) do
    {
      :ok,
      %Spotify.Pagings.Paging{
        items: [
          %Spotify.Tracks.TrackSimple{
            type: "track"
          }
        ],
        total: 1
      }
    }
  end




end
