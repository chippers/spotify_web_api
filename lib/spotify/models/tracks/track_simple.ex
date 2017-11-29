defmodule Spotify.Tracks.TrackSimple do
  @moduledoc """
    A simple Track object.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#track-object-simplified)
  """

  @behaviour Spotify.ObjectModel
  alias Spotify.Tracks
  alias Spotify.Tracks.TrackLink
  alias Spotify.Artists.ArtistSimple

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

  @typedoc "A simple Track object."
  @type t :: %__MODULE__{
               artists: Tracks.artists,
               available_markets: Tracks.available_markets | nil,
               disc_number: Tracks.disc_number | nil,
               duration_ms: Tracks.duration_ms | nil,
               explicit: Tracks.explicit | nil,
               external_urls: Tracks.external_urls | nil,
               href: Tracks.href | nil,
               id: Tracks.id | nil,
               is_playable: Tracks.is_playable | nil,
               linked_from: Tracks.linked_from | nil,
               name: Tracks.name | nil,
               preview_url: Tracks.preview_url | nil,
               track_number: Tracks.track_number | nil,
               type: Tracks.type | nil,
               uri: Tracks.uri | nil,
             }

  def as do
    %__MODULE__{
      artists: [ArtistSimple.as()],
      linked_from: TrackLink.as()
    }
  end
end
