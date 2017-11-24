defmodule Spotify.Playlists.PlaylistTrack do
  # https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#playlist-track-object
  @moduledoc """
    A Playlist Track object.

    | Key   | Value Description |
    | :---- | :---------------- |
    | added_at	|	The date and time the track was added. Note that some very old playlists may return null in this field. |
    | added_by	|	The Spotify user who added the track. Note that some very old playlists may return null in this field. |
    | is_local	|	Whether this track is a local file or not. |
    | track	|	Information about the track. |
  """

  defstruct [
    :added_at,
    :added_by,
    :is_local,
    :track,
  ]

  @type t :: %Spotify.Playlists.PlaylistTrack{
               added_at: Spotify.Timestamp.t,
               added_by: Spotify.Users.UserPublic.t,
               is_local: boolean,
               track: Spotify.Tracks.TrackFull.t,
             }
end