defmodule Spotify.Artists do
  @moduledoc """
    For manipulating artists.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/artists/)
  """

  alias Spotify.{ExternalUrls, Followers, Image}

  @typedoc """
    Known external URLs for this artist.
  """
  @type external_urls :: ExternalUrls.t

  @typedoc """
    Information about the followers of the artist.
  """
  @type followers :: Followers.t

  @typedoc """
    A list of the genres the artist is associated with.
    For example: `Prog Rock` , `Post-Grunge`.
    (If not yet classified, the array is empty.)
  """
  @type genres :: [String.t]

  @typedoc """
    A link to the Web API endpoint providing full details of the artist.
  """
  @type href :: String.t

  @typedoc """
    The Spotify ID for the artist.
  """
  @type id :: String.t

  @typedoc """
    Images of the artist in various sizes, widest first.
  """
  @type images :: [Image.t]

  @typedoc """
    The name of the artist
  """
  @type name :: String.t

  @typedoc """
    The popularity of the artist. The value will be between 0 and 100,
    with 100 being the most popular. The artist’s popularity is calculated
    from the popularity of all the artist’s tracks.
  """
  @type popularity :: integer

  @typedoc """
    The object type: `artist`
  """
  @type type :: String.t

  @typedoc """
    The Spotify URI for the artist.
  """
  @type uri :: String.t
end
