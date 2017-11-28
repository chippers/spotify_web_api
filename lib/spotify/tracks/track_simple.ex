defmodule Spotify.Models.Tracks.TrackSimple do
  @moduledoc """
    A simple Track object.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#track-object-simplified)
  """

  @behaviour Spotify.Models.ObjectModel
  alias Spotify.Models.Tracks
  alias Spotify.Models.Tracks.TrackLink
  alias Spotify.Models.Artists.ArtistSimple

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
               available_markets: Tracks.available_markets,
               disc_number: Tracks.disc_number,
               duration_ms: Tracks.duration_ms,
               explicit: Tracks.explicit,
               external_urls: Tracks.external_urls,
               href: Tracks.href,
               id: Tracks.id,
               is_playable: Tracks.is_playable,
               linked_from: Tracks.linked_from,
               name: Tracks.name,
               preview_url: Tracks.preview_url,
               track_number: Tracks.track_number,
               type: Tracks.type,
               uri: Tracks.uri,
             }

  def as do
    %__MODULE__{
      artists: [ArtistSimple.as()],
      linked_from: TrackLink.as()
    }
  end
end
