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
