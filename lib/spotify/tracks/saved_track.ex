defmodule Spotify.Tracks.SavedTrack do
  @moduledoc """
    A Saved Track object, holding a full track object.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#saved-track-object)
  """

  @behaviour Spotify.ObjectModel
  alias Spotify.Tracks
  alias Spotify.Tracks.TrackFull

  defstruct [
    :added_at,
    :track,
  ]

  @typedoc "A Saved Track object."
  @type t :: %__MODULE__{
               added_at: Tracks.added_at,
               track: Tracks.track,
             }

  def as do
    %__MODULE__{
      track: TrackFull.as()
    }
  end
end

defimpl Poison.Decoder, for: Spotify.Tracks.SavedTrack do
  def decode(%{added_at: added_at} = saved_track, _options) do
    case DateTime.from_iso8601(added_at) do
      {:ok, datetime} -> %{saved_track | added_at: datetime}
      {:error, _} -> saved_track
    end
  end
end
