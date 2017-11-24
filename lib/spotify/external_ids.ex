defmodule Spotify.ExternalIds do
  # https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#external-id-object
  @moduledoc """
    An external ID object is a map that holds {key}: {value} where both the
    key and value are not within a known set.

    | Key   | Value Description |
    | :---- | :---------------- |
    | {key} | The identifier type, for example: `isrc` - International Standard Recording Code, `ean` - International Article Number, `upc` - Universal Product Code |
    | {value} | 	An external identifier for the object. |
  """

  @type t :: map
end