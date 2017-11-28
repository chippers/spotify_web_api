defmodule Spotify.Restrictions do
  @moduledoc """
  	A Restrictions object showing why a track isn't available.

    Part of the response when Track Relinking is applied, the original track is not available in the given market,
    and Spotify did not have any tracks to relink it with. The track response will still contain metadata for the
    original track, and a restrictions object containing the reason why the track is not available:
    `"restrictions" : {"reason" : "market"}`

  	No specific documentation found, but can be found in the "restrictions" key in the full track object documentation.
  	[Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#track-object-full)

    | Key   | Value Description |
    | :---- | :---------------- |
    | {reason} | seems to always be `reason`? |
    | {value} | A value for the reason? |
  """

  @typedoc """
   The Restrictions map.

   Contains the reason why the track is not available:
  `"restrictions" : {"reason" : "market"}`. Find more info at the
  "restrictions" section in the full track object documentation
   [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#track-object-full)
  """
  @type t :: map
end
