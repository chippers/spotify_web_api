defmodule Spotify.Timestamp do
  @moduledoc """
  	The Spotify Web API's version of timestamps.

    Timestamps are returned in ISO 8601 format as Coordinated Universal Time (UTC)
    with a zero offset: YYYY-MM-DDTHH:MM:SSZ. If the time is imprecise (for example,
    the date/time of an album release), an additional field indicates the precision;
    see for example, release_date in an album object.

  	[Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/#timestamps)
  """

  @typedoc """
  An ISO 8601 represented timestamp in a string.
  """
  @type t :: String.t
end
