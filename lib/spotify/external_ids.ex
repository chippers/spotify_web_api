defmodule Spotify.ExternalIds do
  @moduledoc """
  	An object that holds keys and values.

    | Key   | Value Description |
    | :---- | :---------------- |
    | {key} | The identifier type, for example: `isrc` - International Standard Recording Code, `ean` - International Article Number, `upc` - Universal Product Code |
    | {value} | 	An external identifier for the object. |

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#external-id-object)
  """

  @typedoc """
    The External ID map.

    An external ID object is a map that holds {key}: {value} where both the
    key and value are not within a known set. Find more info at the
    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#external-id-object)
  """
  @type t :: map
end
