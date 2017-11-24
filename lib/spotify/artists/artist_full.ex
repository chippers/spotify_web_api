defmodule Spotify.Artists.ArtistFull do
  # https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#artist-object-full
  @moduledoc """
    A full Artist object.

    | Key   | Value Description |
    | :---- | :---------------- |
    | external_urls	|	Known external URLs for this artist. |
    | followers	|	Information about the followers of the artist. |
    | genres	|	A list of the genres the artist is associated with. For example: "Prog Rock" , "Post-Grunge". (If not yet classified, the array is empty.) |
    | href	|	A link to the Web API endpoint providing full details of the artist. |
    | id	|	The Spotify ID for the artist. |
    | images	|	Images of the artist in various sizes, widest first. |
    | name	|	The name of the artist |
    | popularity	|	The popularity of the artist. The value will be between 0 and 100, with 100 being the most popular. The artist’s popularity is calculated from the popularity of all the artist’s tracks. |
    | type	|	The object type: "artist" |
    | uri	|	The Spotify URI for the artist. |
  """

  defstruct [
    :external_urls,
    :followers,
    :genres,
    :href,
    :id,
    :images,
    :name,
    :popularity,
    :type,
    :uri,
  ]

  @type t :: %Spotify.Artists.ArtistFull{
               external_urls: Spotify.ExternalUrls.t,
               followers: Spotify.Followers.t,
               genres: [String.t],
               href: String.t,
               id: String.t,
               images: [Spotify.Image.t],
               name: String.t,
               popularity: integer,
               type: String.t,
               uri: String.t,
             }
end
