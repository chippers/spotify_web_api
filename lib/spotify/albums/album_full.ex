defmodule Spotify.Models.Albums.AlbumFull do
  @moduledoc """
    A full album object.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#album-object-full)
  """

  @behaviour Spotify.Models.ObjectModel
  alias Spotify.Models.Albums
  alias Spotify.Models.Artists.ArtistSimple
  alias Spotify.Models.{Image, Copyright}
  alias Spotify.Models.Pagings.Paging
  alias Spotify.Models.Tracks.TrackSimple

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
               album_type: Albums.album_type,
               artists: Albums.artists,
               available_markets: Albums.available_markets,
               copyrights: Albums.copyrights,
               external_ids: Albums.external_ids,
               external_urls: Albums.external_urls,
               genres: Albums.genres,
               href: Albums.href,
               id: Albums.id,
               images: Albums.images,
               label: Albums.label,
               name: Albums.name,
               popularity: Albums.popularity,
               release_date: Albums.release_date,
               release_date_precision: Albums.release_date_precision,
               tracks: Albums.tracks,
               type: Albums.type,
               uri: Albums.uri,
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
