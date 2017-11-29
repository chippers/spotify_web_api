defmodule Spotify.Followers do
  @moduledoc """
    Information about the followers of the artist or user.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#followers-object)
  """

  @behaviour Spotify.ObjectModel

  @typedoc """
    A link to the Web API endpoint providing full details of the followers;
    `null` if not available. Please note that this will always be set to `null`,
    as the Web API does not support it at the moment.
  """
  @type href :: String.t | nil

  @typedoc """
    The total number of followers.
  """
  @type total :: integer

  defstruct [
    :href,
    :total,
  ]

  @typedoc """
    The full Followers object.

    Contains all the values listed in the
    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#followers-object)
  """
  @type t :: %__MODULE__{
               href: __MODULE__.href | nil,
               total: __MODULE__.total | nil,
             }

  def as do
    %__MODULE__{}
  end
end
