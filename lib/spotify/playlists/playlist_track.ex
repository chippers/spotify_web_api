defmodule Spotify.Models.Playlists.PlaylistTrack do
  @moduledoc """
    A Playlist Track object.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#playlist-track-object)
  """

  @behaviour Spotify.Models.ObjectModel
  alias Spotify.Models.Playlists
  alias Spotify.Models.Users.UserPublic
  alias Spotify.Models.Tracks.TrackFull

  defstruct [
    :added_at,
    :added_by,
    :is_local,
    :track,
  ]

  @typedoc "A Playlist Track object."
  @type t :: %Spotify.Models.Playlists.PlaylistTrack{
               added_at: Playlists.added_at,
               added_by: Playlists.added_by,
               is_local: Playlists.is_local,
               track: Playlists.track,
             }

  def as do
    %__MODULE__{
      added_by: UserPublic.as(),
      track: TrackFull.as()
    }
  end
end

defimpl Poison.Decoder, for: Spotify.Models.Playlists.PlaylistTrack do
  def decode(%{added_at: added_at} = playlist_track, _options) do
    case DateTime.from_iso8601(added_at) do
      {:ok, datetime} -> %{playlist_track | added_at: datetime}
      {:error, _} -> playlist_track
    end
  end
end
