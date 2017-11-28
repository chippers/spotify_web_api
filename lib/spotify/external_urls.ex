defmodule Spotify.Models.ExternalUrls do
  @moduledoc """
     An object that holds keys and values.

    | Key   | Value Description |
    | :---- | :---------------- |
    | {key} | The type of the URL, for example: "spotify" - The Spotify URL for the object. |
    | {value} |   An external, public URL to the object. |

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#external-url-object)
  """

  @typedoc """
    The External URLs map.

    An external URL object is a map that holds {key}: {value} where both the
    key and value are not within a known set. Find more info at the
    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#external-url-object)
  """
  @type t :: map
end
