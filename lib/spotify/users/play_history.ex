defmodule Spotify.Models.Users.PlayHistory do
  @moduledoc """
    A Play History object.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#play-history-object)
  """

  @behaviour Spotify.Models.ObjectModel
  alias Spotify.Models.Users
  alias Spotify.Models.Tracks.TrackSimple
  alias Spotify.Models.Context

  defstruct [
    :track,
    :played_at,
    :context,
  ]

  @typedoc "A Play History object."
  @type t :: %__MODULE__{
               track: Users.track,
               played_at: Users.played_at,
               context: Users.context,
             }

  def as do
    %__MODULE__{
      track: TrackSimple.as(),
      context: Context.as()
    }
  end
end

defimpl Poison.Decoder, for: Spotify.Models.Users.PlayHistory do
  def decode(%{played_at: played_at} = play_history, _options) do
    case DateTime.from_iso8601(played_at) do
      {:ok, datetime} -> %{play_history | played_at: datetime}
      {:error, _} -> play_history
    end
  end
end
