defmodule Spotify.Tracks do
  @moduledoc """
    For manipulating tracks.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/tracks/)
  """

  alias Spotify.Tracks.{TrackFull, TrackLink}
  alias Spotify.{ExternalIds, ExternalUrls, Restrictions, Timestamp}
  alias Spotify.Albums.AlbumSimple
  alias Spotify.Artists.ArtistSimple

  @typedoc """
  	The album on which the track appears.
  	The album object includes a link in href to full information about the album.
  """
  @type album :: AlbumSimple.t

  @typedoc """
  	The artists who performed the track. Each artist object includes a
  	link in href to more detailed information about the artist.
  """
  @type artists :: [ArtistSimple.t]

  @typedoc """
  	A list of the countries in which the track can be played,
  	identified by their ISO 3166-1 alpha-2 code.
  """
  @type available_markets :: [String.t] | nil

  @typedoc """
  	The disc number (usually 1 unless the album consists of more than one disc).
  """
  @type disc_number :: integer

  @typedoc """
  	The track length in milliseconds
  """
  @type duration_ms :: integer

  @typedoc """
  	Whether or not the track has explicit lyrics
  	( `true` = yes it does; `false` = no it does not OR unknown).
  """
  @type explicit :: boolean

  @typedoc """
  	Known external IDs for the track.
  """
  @type external_ids :: ExternalIds.t

  @typedoc """
  	Known external URLs for this track.
  """
  @type external_urls :: ExternalUrls

  @typedoc """
  	A link to the Web API endpoint providing full details of the track.
  """
  @type href :: String.t

  @typedoc """
  	The Spotify ID for the track.
  """
  @type id :: String.t

  @typedoc """
  	Part of the response when Track Relinking is applied. If true,
  	the track is playable in the given market. Otherwise false.
  """
  @type is_playable :: boolean

  @typedoc """
  	Part of the response when Track Relinking is applied, and the
  	requested track has been replaced with different track.
  	The track in the linked_from object contains information
  	about the originally requested track.
  """
  @type linked_from :: TrackLink.t | nil

  @typedoc """
  	Part of the response when Track Relinking is applied,
  	the original track is not available in the given market,
  	and Spotify did not have any tracks to relink it with.
  	The track response will still contain metadata for the original track,
  	and a restrictions object containing the reason why the track
  	is not available: `"restrictions" : {"reason" : "market"}`
  """
  @type restrictions :: Restrictions.t

  @typedoc """
  	The name of the track.
  """
  @type name :: String.t

  @typedoc """
  	The popularity of the track. The value will be between 0 and 100,
  	with 100 being the most popular. The popularity of a track is a
  	value between 0 and 100, with 100 being the most popular.
  	The popularity is calculated by algorithm and is based, in the most part,
  	on the total number of plays the track has had and how recent those plays are.
  	Generally speaking, songs that are being played a lot now will have a higher
  	popularity than songs that were played a lot in the past.
  	Duplicate tracks (e.g. the same track from a single and an album) are rated
  	independently. Artist and album popularity is derived mathematically from
  	track popularity. Note that the popularity value may lag actual popularity
  	by a few days: the value is not updated in real time.
  """
  @type popularity :: integer

  @typedoc """
  	A link to a 30 second preview (MP3 format) of the track.
  """
  @type preview_url :: String.t

  @typedoc """
  	The number of the track. If an album has several discs,
  	the track number is the number on the specified disc.
  """
  @type track_number :: integer

  @typedoc """
  	The object type: `track`.
  """
  @type type :: String.t

  @typedoc """
  	The Spotify URI for the track.
  """
  @type uri :: String.t

  @typedoc """
  	The date and time the track was saved.
  """
  @type added_at :: Timestamp.t

  @typedoc """
  	Information about the track.
  """
  @type track :: TrackFull.t
end
