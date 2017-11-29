defmodule Spotify.Users.PlayHistory do
  @moduledoc """
    A Play History object.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#play-history-object)
  """

  @behaviour Spotify.ObjectModel
  alias Spotify.Users
  alias Spotify.Tracks.TrackSimple
  alias Spotify.Context

  defstruct [
    :track,
    :played_at,
    :context,
  ]

  @typedoc "A Play History object."
  @type t :: %__MODULE__{
               track: Users.track,
               played_at: Users.played_at | nil,
               context: Users.context | nil,
             }

  def as do
    %__MODULE__{
      track: TrackSimple.as(),
      context: Context.as()
    }
  end
end

defimpl Poison.Decoder, for: Spotify.Users.PlayHistory do
  def decode(%{played_at: played_at} = play_history, _options) do
    case DateTime.from_iso8601(played_at) do
      {:ok, datetime, 0} -> %{play_history | played_at: datetime}
      {:error, _} -> play_history
    end
  end
end
