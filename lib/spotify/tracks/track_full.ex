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
               album: Tracks.album,
               artists: Tracks.artists,
               available_markets: Tracks.available_markets,
               disc_number: Tracks.disc_number,
               duration_ms: Tracks.duration_ms,
               explicit: Tracks.explicit,
               external_ids: Tracks.external_ids,
               external_urls: Tracks.external_urls,
               href: Tracks.href,
               id: Tracks.id,
               is_playable: Tracks.is_playable,
               linked_from: Tracks.linked_from,
               restrictions: Tracks.restrictions,
               name: Tracks.name,
               popularity: Tracks.popularity,
               preview_url: Tracks.preview_url,
               track_number: Tracks.track_number,
               type: Tracks.type,
               uri: Tracks.uri,
             }

  def as do
    %__MODULE__{
      album: AlbumSimple.as(),
      artists: [ArtistSimple.as()],
      linked_from: TrackLink.as(),
    }
  end
end
