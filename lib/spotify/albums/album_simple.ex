defmodule Spotify.Albums.AlbumSimple do
  # https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#artist-object-simplified
  @moduledoc """
    A simplified album object.

    | Key   | Value Description |
    | :---- | :---------------- |
    | album_type	| The type of the album: one of "album" , "single" , or "compilation". |
    | artists	| The artists of the album. Each artist object includes a link in href to more detailed information about the artist. |
    | available_markets	| The markets in which the album is available: ISO 3166-1 alpha-2 country codes. Note that an album is considered available in a market when at least 1 of its tracks is available in that market. |
    | external_urls	| Known external URLs for this album. |
    | href	| A link to the Web API endpoint providing full details of the album. |
    | id	| The Spotify ID for the album. |
    | images	| The cover art for the album in various sizes, widest first. |
    | name	| The name of the album. In case of an album takedown, the value may be an empty string. |
    | type	| The object type: “album” |
    | uri	| The Spotify URI for the album. |
  """

  defstruct [
    :album_type,
    :artists,
    :available_markets,
    :external_urls,
    :href,
    :id,
    :images,
    :name,
    :type,
    :uri
  ]

  @type t :: %Spotify.Albums.AlbumFull{
               album_type: String.t,
               artists: [Spotify.Artists.ArtistSimple.t],
               available_markets: [String.t],
               external_urls: Spotify.ExternalUrls.t,
               href: String.t,
               id: String.t,
               images: [Spotify.Image.t],
               name: String.t,
               type: String.t,
               uri: String.t,
             }
end
