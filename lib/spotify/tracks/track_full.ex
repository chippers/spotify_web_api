defmodule Spotify.Tracks.TrackFull do
  # https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#track-object-full
  @moduledoc """
    A full Track object.

    | Key   | Value Description |
    | :---- | :---------------- |
    | album	|	The album on which the track appears. The album object includes a link in href to full information about the album. |
    | artists	|	The artists who performed the track. Each artist object includes a link in href to more detailed information about the artist. |
    | available_markets	|	A list of the countries in which the track can be played, identified by their ISO 3166-1 alpha-2 code. |
    | disc_number	| The disc number (usually 1 unless the album consists of more than one disc). |
    | duration_ms	| The track length in milliseconds. |
    | explicit	| Whether or not the track has explicit lyrics ( true = yes it does; false = no it does not OR unknown). |
    | external_ids	|	Known external IDs for the track. |
    | external_urls	|	Known external URLs for this track. |
    | href	| A link to the Web API endpoint providing full details of the track. |
    | id	| The Spotify ID for the track. |
    | is_playable	|	Part of the response when Track Relinking is applied. If true , the track is playable in the given market. Otherwise false. |
    | linked_from	|	Part of the response when Track Relinking is applied, and the requested track has been replaced with different track. The track in the linked_from object contains information about the originally requested track. |
    | restrictions	|	Part of the response when Track Relinking is applied, the original track is not available in the given market, and Spotify did not have any tracks to relink it with. The track response will still contain metadata for the original track, and a restrictions object containing the reason why the track is not available: "restrictions" : {"reason" : "market"} |
    | name	|	The name of the track. |
    | popularity	|	The popularity of the track. The value will be between 0 and 100, with 100 being the most popular. The popularity of a track is a value between 0 and 100, with 100 being the most popular. The popularity is calculated by algorithm and is based, in the most part, on the total number of plays the track has had and how recent those plays are. Generally speaking, songs that are being played a lot now will have a higher popularity than songs that were played a lot in the past. Duplicate tracks (e.g. the same track from a single and an album) are rated independently. Artist and album popularity is derived mathematically from track popularity. Note that the popularity value may lag actual popularity by a few days: the value is not updated in real time. |
    | preview_url	|	A link to a 30 second preview (MP3 format) of the track. |
    | track_number	|	The number of the track. If an album has several discs, the track number is the number on the specified disc. |
    | type	|	The object type: “track”. |
    | uri	|	The Spotify URI for the track. |
  """

  defstruct [
    :album,
    :artists,
    :available_markets,
    :disc_number,
    :duration_ms,
    :explicit,
    :external_ids,
    :external_urls,
    :href,
    :id,
    :is_playable,
    :linked_from,
    :restrictions,
    :name,
    :popularity,
    :preview_url,
    :track_number,
    :type,
    :uri,
  ]

  @type t :: %Spotify.Tracks.TrackFull{
               album: Spotify.Albums.AlbumSimple.t,
               artists: Spotify.Artists.ArtistSimple.t,
               available_markets: [String.t],
               disc_number: integer,
               duration_ms: integer,
               explicit: boolean,
               external_ids: Spotify.ExternalIds.t,
               external_urls: Spotify.ExternalUrls.t,
               href: String.t,
               id: String.t,
               is_playable: boolean,
               linked_from: Spotify.Tracks.TrackLink.t,
               restrictions: Spotify.Restrictions.t,
               name: String.t,
               popularity: integer,
               preview_url: String.t,
               track_number: integer,
               type: String.t,
               uri: String.t,
             }
end
