defmodule Spotify.Albums.AlbumFull do
  # https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#artist-object-full
  @moduledoc """
    A full album object.

    | Key   | Value Description |
    | :---- | :---------------- |
    | album_type	| The type of the album: one of "album" , "single" , or "compilation". |
    | artists	| The artists of the album. Each artist object includes a link in href to more detailed information about the artist. |
    | available_markets	| The markets in which the album is available: ISO 3166-1 alpha-2 country codes. Note that an album is considered available in a market when at least 1 of its tracks is available in that market. |
    | copyrights	| The copyright statements of the album. |
    | external_ids	| Known external IDs for the album. |
    | external_urls	| Known external URLs for this album. |
    | genres	| A list of the genres used to classify the album. For example: "Prog Rock" , "Post-Grunge". (If not yet classified, the array is empty.) |
    | href	| A link to the Web API endpoint providing full details of the album. |
    | id	| The Spotify ID for the album. |
    | images	| The cover art for the album in various sizes, widest first. |
    | label	| The label for the album. |
    | name	| The name of the album. In case of an album takedown, the value may be an empty string. |
    | popularity	| The popularity of the album. The value will be between 0 and 100, with 100 being the most popular. The popularity is calculated from the popularity of the album’s individual tracks. |
    | release_date	| The date the album was first released, for example "1981-12-15". Depending on the precision, it might be shown as "1981" or "1981-12". |
    | release_date_precision	| The precision with which release_date value is known: "year" , "month" , or "day". |
    | tracks	| The tracks of the album. |
    | type	| The object type: “album” |
    | uri	| The Spotify URI for the album. |
  """

  defstruct [
    :album_type,
    :artists,
    :available_markets,
    :copyrights,
    :external_ids,
    :external_urls,
    :genres,
    :href,
    :id,
    :images,
    :label,
    :name,
    :popularity,
    :release_date,
    :release_date_precision,
    :tracks,
    :type,
    :uri
  ]

  @type t :: %Spotify.Albums.AlbumFull{
               album_type: String.t,
               artists: [Spotify.Artists.ArtistSimple.t],
               available_markets: [String.t],
               copyrights: [Spotify.Copyright.t],
               external_ids: Spotify.ExternalIds.t,
               external_urls: Spotify.ExternalUrls.t,
               genres: [String.t],
               href: String.t,
               id: String.t,
               images: [Spotify.Image.t],
               label: String.t,
               name: String.t,
               popularity: integer,
               release_date: String.t,
               release_date_precision: String.t,
               tracks: Spotify.Pagings.Paging.t(Spotify.Tracks.TrackSimple.t),
               type: String.t,
               uri: String.t,
             }
end
