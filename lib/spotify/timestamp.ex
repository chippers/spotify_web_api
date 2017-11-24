defmodule Spotify.Timestamp do
  # https://beta.developer.spotify.com/documentation/web-api/#timestamps
  @moduledoc """
    Timestamps are returned in ISO 8601 format as Coordinated Universal Time (UTC)
    with a zero offset: YYYY-MM-DDTHH:MM:SSZ. If the time is imprecise (for example,
    the date/time of an album release), an additional field indicates the precision;
    see for example, release_date in an album object.
  """

  @type t :: String.t
end