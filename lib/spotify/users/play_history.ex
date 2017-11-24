defmodule Spotify.Users.PlayHistory do
  # https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#play-history-object
  @moduledoc """
    A Play History object.

    | Key   | Value Description |
    | :---- | :---------------- |
    | track	| The track the user listened to. |
    | played_at	|	The date and time the track was played. |
    | context	|	The context the track was played from. |
  """

  defstruct [
    :track,
    :played_at,
    :context,
  ]

  @type t :: %Spotify.Users.PlayHistory{
               track: Spotify.Tracks.TrackSimple.t,
               played_at: Spotify.Timestamp.t,
               context: Spotify.Context.t,
             }
end
