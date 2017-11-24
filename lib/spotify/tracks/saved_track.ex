defmodule Spotify.Tracks.SavedTrack do
  # https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#saved-track-object
  @moduledoc """
    A Saved Track object, holding a full track object.

    | Key   | Value Description |
    | :---- | :---------------- |
    | added_at | The date and time the track was saved. |
    | track | Information about the track. |
  """

  defstruct [
    :added_at,
    :track,
  ]

  @type t :: %Spotify.Tracks.SavedTrack{
               added_at: Spotify.Timestamp.t,
               track: Spotify.Tracks.TrackFull.t,
             }
end
