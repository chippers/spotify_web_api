defmodule Spotify.Cursor do
  # https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#cursor-object
  @moduledoc """
    An object containing cursor information.

    | Key   | Value Description |
    | :---- | :---------------- |
    | after	|	The cursor to use as key to find the next page of items. |
  """

  defstruct [
    :after,
  ]

  @type t :: %Spotify.Cursor{
               after: String.t,
             }
end