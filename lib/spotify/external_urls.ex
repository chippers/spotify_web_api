defmodule Spotify.ExternalUrls do
  # https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#external-url-object
  @moduledoc """
    An external URL object is a map that holds {key}: {value} where both the
    key and value are not within a known set.

    | Key   | Value Description |
    | :---- | :---------------- |
    | {key} | The type of the URL, for example: "spotify" - The Spotify URL for the object. |
    | {value} | 	An external, public URL to the object. |
  """

  @type t :: map
end