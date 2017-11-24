defmodule Spotify.Artists.ArtistSimple do
  # https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#artist-object-simplified
  @moduledoc """
    A Simplified artist object

    | Key   | Value Description |
    | :---- | :---------------- |
    | external_urls | Known external URLs for this artist. |
    | href  | A link to the Web API endpoint providing full details of the artist. |
    | id    | The Spotify ID for the artist. |
    | name  | The name of the artist |
    | type  | The object type: "artist" |
    | uri   | The Spotify URI for the artist. |
  """

  defstruct [
    :external_urls,
    :href,
    :id,
    :name,
    :type,
    :uri
  ]

  @type t :: %Spotify.Artists.ArtistSimple{
               external_urls: Spotify.ExternalUrls.t,
               href: String.t,
               id: String.t,
               name: String.t,
               type: String.t,
               uri: String.t
             }
end
