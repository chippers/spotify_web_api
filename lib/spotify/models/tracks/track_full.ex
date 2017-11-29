defmodule Spotify.Tracks.TrackFull do
  @moduledoc """
    A full Track object.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#track-object-full)
  """

  @behaviour Spotify.ObjectModel
  alias Spotify.Tracks
  alias Spotify.Tracks.TrackLink
  alias Spotify.Albums.AlbumSimple
  alias Spotify.Artists.ArtistSimple

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

  @typedoc "A full Track object."
  @type t :: %__MODULE__{
               album: Tracks.album | nil,
               artists: Tracks.artists | nil,
               available_markets: Tracks.available_markets | nil,
               disc_number: Tracks.disc_number | nil,
               duration_ms: Tracks.duration_ms | nil,
               explicit: Tracks.explicit | nil,
               external_ids: Tracks.external_ids | nil,
               external_urls: Tracks.external_urls | nil,
               href: Tracks.href | nil,
               id: Tracks.id | nil,
               is_playable: Tracks.is_playable | nil,
               linked_from: Tracks.linked_from | nil,
               restrictions: Tracks.restrictions | nil,
               name: Tracks.name | nil,
               popularity: Tracks.popularity | nil,
               preview_url: Tracks.preview_url | nil,
               track_number: Tracks.track_number | nil,
               type: Tracks.type | nil,
               uri: Tracks.uri | nil,
             }

  def as do
    %__MODULE__{
      album: AlbumSimple.as(),
      artists: [ArtistSimple.as()],
      linked_from: TrackLink.as(),
    }
  end
end
