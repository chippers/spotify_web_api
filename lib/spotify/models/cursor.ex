defmodule Spotify.Cursor do
  @moduledoc """
    An object containing cursor information.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#cursor-object)
  """

  @behaviour Spotify.ObjectModel

  @typedoc """
    The cursor to use as key to find the next page of items.
  """
  @type after_cursor :: String.t

  defstruct [
    :after,
  ]

  @typedoc """
    The full Cursor object.

    Contains all the values listed in the
    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#cursor-object)
  """
  @type t :: %__MODULE__{
               after: __MODULE__.after_cursor | nil,
             }

  def as do
    %__MODULE__{}
  end
end
