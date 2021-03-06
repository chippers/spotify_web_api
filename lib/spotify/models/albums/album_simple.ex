defmodule Spotify.Albums.AlbumSimple do
  @moduledoc """
    A simplified album object.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#album-object-simplified)
  """

  @behaviour Spotify.ObjectModel
  alias Spotify.Albums
  alias Spotify.Artists.ArtistSimple
  alias Spotify.Image

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

  @typedoc "A simplified album object."
  @type t :: %__MODULE__{
               album_type: Albums.album_type | nil,
               artists: Albums.artists | nil,
               available_markets: Albums.available_markets | nil,
               external_urls: Albums.external_urls | nil,
               href: Albums.href | nil,
               id: Albums.id | nil,
               images: Albums.images | nil,
               name: Albums.name | nil,
               type: Albums.type | nil,
               uri: Albums.uri | nil,
             }

  def as do
    %__MODULE__{
      artists: [ArtistSimple.as()],
      images: [Image.as()],
    }
  end
end
