defmodule Spotify.Restrictions do
  # No specific documentation found, but can be found in the "restrictions" key in the full track object documentation.
  # https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#track-object-full
  @moduledoc """
    Part of the response when Track Relinking is applied, the original track is not available in the given market,
    and Spotify did not have any tracks to relink it with. The track response will still contain metadata for the
    original track, and a restrictions object containing the reason why the track is not available:
    `"restrictions" : {"reason" : "market"}`

    | Key   | Value Description |
    | :---- | :---------------- |
    | {reason} | seems to always be `reason`? |
    | {value} | A value for the reason? |
  """

  @type t :: map
end