defmodule Spotify.Followers do
  # https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#followers-object
  @moduledoc """
    Information about the followers of the artist.

    | Key   | Value Description |
    | :---- | :---------------- |
    | href	|	A link to the Web API endpoint providing full details of the followers; null if not available. Please note that this will always be set to null, as the Web API does not support it at the moment. |
    | total	|	The total number of followers. |
  """

  defstruct [
    :href,
    :total,
  ]

  @type t :: %Spotify.Followers{
               href: String.t,
               total: integer
             }
end