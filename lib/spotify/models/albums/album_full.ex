defmodule Spotify.Albums.AlbumFull do
  @moduledoc """
    A full album object.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#album-object-full)
  """

  @behaviour Spotify.ObjectModel
  alias Spotify.Albums
  alias Spotify.Artists.ArtistSimple
  alias Spotify.{Image, Copyright}
  alias Spotify.Pagings.Paging
  alias Spotify.Tracks.TrackSimple

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

  @typedoc "A full album object."
  @type t :: %__MODULE__{
               album_type: Albums.album_type | nil,
               artists: Albums.artists | nil,
               available_markets: Albums.available_markets | nil,
               copyrights: Albums.copyrights | nil,
               external_ids: Albums.external_ids | nil,
               external_urls: Albums.external_urls | nil,
               genres: Albums.genres | nil,
               href: Albums.href | nil,
               id: Albums.id | nil,
               images: Albums.images | nil,
               label: Albums.label | nil,
               name: Albums.name | nil,
               popularity: Albums.popularity | nil,
               release_date: Albums.release_date | nil,
               release_date_precision: Albums.release_date_precision | nil,
               tracks: Albums.tracks | nil,
               type: Albums.type | nil,
               uri: Albums.uri | nil,
             }

  def as do
    %__MODULE__{
      artists: [ArtistSimple.as()],
      copyrights: [Copyright.as()],
      images: [Image.as()],
      tracks: Paging.wrap(TrackSimple.as()),
    }
  end
end
