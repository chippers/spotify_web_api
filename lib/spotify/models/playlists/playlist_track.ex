defmodule Spotify.Playlists.PlaylistTrack do
  @moduledoc """
    A Playlist Track object.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#playlist-track-object)
  """

  @behaviour Spotify.ObjectModel
  alias Spotify.Playlists
  alias Spotify.Users.UserPublic
  alias Spotify.Tracks.TrackFull

  defstruct [
    :added_at,
    :added_by,
    :is_local,
    :track,
  ]

  @typedoc "A Playlist Track object."
  @type t :: %Spotify.Playlists.PlaylistTrack{
               added_at: Playlists.added_at | nil,
               added_by: Playlists.added_by | nil,
               is_local: Playlists.is_local | nil,
               track: Playlists.track | nil,
             }

  def as do
    %__MODULE__{
      added_by: UserPublic.as(),
      track: TrackFull.as()
    }
  end
end

defimpl Poison.Decoder, for: Spotify.Playlists.PlaylistTrack do
  def decode(%{added_at: added_at} = playlist_track, _options) do
    case DateTime.from_iso8601(added_at) do
      {:ok, datetime, 0} -> %{playlist_track | added_at: datetime}
      {:error, _} -> playlist_track
    end
  end
end
