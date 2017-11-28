defmodule Spotify.Albums do
  @moduledoc """
    For manipulating albums.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/albums/)
  """

  alias Spotify.Albums.AlbumFull
  alias Spotify.Artists.ArtistSimple
  alias Spotify.Tracks.TrackSimple
  alias Spotify.Pagings.Paging
  alias Spotify.{Copyright, ExternalUrls, ExternalIds, Image, Timestamp}

  @typedoc """
    The type of the album: one of `album` , `single` , or `compilation`.
  """
  @type album_type :: String.t

  @typedoc """
    The artists of the album. Each artist object includes a link in href to more detailed information about the artist.
  """
  @type artists :: [ArtistSimple.t]

  @typedoc """
    The markets in which the album is available: ISO 3166-1 alpha-2 country codes. Note that an album is
    considered available in a market when at least 1 of its tracks is available in that market.
  """
  @type available_markets :: [String.t] | nil

  @typedoc """
    The copyright statements of the album.
  """
  @type copyrights :: [Copyright.t]

  @typedoc """
    The copyright statements of the album.
  """
  @type external_ids :: ExternalIds.t

  @typedoc """
     Known external URLs for this album.
  """
  @type external_urls :: ExternalUrls.t

  @typedoc """
    A list of the genres used to classify the album. For example: `Prog Rock` , `Post-Grunge`.
    (If not yet classified, the array is empty.)
  """
  @type genres :: [String.t]

  @typedoc """
    A link to the Web API endpoint providing full details of the album.
  """
  @type href :: String.t

  @typedoc """
    The Spotify ID for the album.
  """
  @type id :: String.t

  @typedoc """
    The cover art for the album in various sizes, widest first.
  """
  @type images :: [Image.t]

  @typedoc """
    The label for the album.
  """
  @type label :: String.t

  @typedoc """
    The name of the album. In case of an album takedown, the value may be an empty string.
  """
  @type name :: String.t

  @typedoc """
    The popularity of the album. The value will be between 0 and 100, with 100 being the most popular.
    The popularity is calculated from the popularity of the album’s individual tracks.
  """
  @type popularity :: integer

  @typedoc """
    The date the album was first released, for example `1981-12-15`.
    Depending on the precision, it might be shown as `1981` or `1981-12`.
  """
  @type release_date :: String.t

  @typedoc """
    The precision with which release_date value is known: `year` , `month` , or `day`.
  """
  @type release_date_precision :: String.t

  @typedoc """
    The tracks of the album.
  """
  @type tracks :: Paging.t(TrackSimple.t)

  @typedoc """
    The object type: `album`
  """
  @type type :: String.t

  @typedoc """
    The Spotify URI for the album.
  """
  @type uri :: String.t

  @typedoc """
    The date and time the album was saved.
  """
  @type added_at :: Timestamp.t

  @typedoc """
    Information about the album.
  """
  @type album :: AlbumFull.t
end
