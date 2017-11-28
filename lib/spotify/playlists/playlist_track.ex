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
