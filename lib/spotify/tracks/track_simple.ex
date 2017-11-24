defmodule Spotify.Tracks.TrackSimple do
  # https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#track-object-simplified
  @moduledoc """
    A simple Track object.

    | Key   | Value Description |
    | :---- | :---------------- |
    | artists	| The artists who performed the track. Each artist object includes a link in href to more detailed information about the artist. |
    | available_markets	|	A list of the countries in which the track can be played, identified by their ISO 3166-1 alpha-2 code. |
    | disc_number	|	The disc number (usually 1 unless the album consists of more than one disc). |
    | duration_ms	|	The track length in milliseconds. |
    | explicit	| Whether or not the track has explicit lyrics ( true = yes it does; false = no it does not OR unknown). |
    | external_urls	|	External URLs for this track. |
    | href	|	A link to the Web API endpoint providing full details of the track. |
    | id	|	The Spotify ID for the track. |
    | is_playable	| Part of the response when Track Relinking is applied. If true , the track is playable in the given market. Otherwise false. |
    | linked_from	|	Part of the response when Track Relinking is applied and is only part of the response if the track linking, in fact, exists. The requested track has been replaced with a different track. The track in the linked_from object contains information about the originally requested track. |
    | name	|	The name of the track. |
    | preview_url	|	A URL to a 30 second preview (MP3 format) of the track. |
    | track_number	| The number of the track. If an album has several discs, the track number is the number on the specified disc. |
    | type	|	The object type: “track”. |
    | uri	| The Spotify URI for the track. |
  """

  defstruct [
    :artists,
    :available_markets,
    :disc_number,
    :duration_ms,
    :explicit,
    :external_urls,
    :href,
    :id,
    :is_playable,
    :linked_from,
    :name,
    :preview_url,
    :track_number,
    :type,
    :uri,
  ]

  @type t :: %Spotify.Tracks.TrackSimple{
               artists: [Spotify.ArtistSimple.t],
               available_markets: [String.t],
               disc_number: integer,
               duration_ms: integer,
               explicit: boolean,
               external_urls: Spotify.ExternalUrls.t,
               href: String.t,
               id: String.t,
               is_playable: boolean,
               linked_from: Spotify.Tracks.TrackLink.t,
               name: String.t,
               preview_url: String.t,
               track_number: integer,
               type: String.t,
               uri: String.t,
             }
end
