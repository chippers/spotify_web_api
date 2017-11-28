defmodule Spotify.Recommendations do
  @moduledoc """
    A Recommendations object.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#recommendations-object)
  """

  @behaviour Spotify.ObjectModel
  alias Spotify.Recommendations
  alias Spotify.Recommendations.Seed
  alias Spotify.Tracks.TrackSimple

  @typedoc """
    An array of recommendation seed objects.
  """
  @type seeds :: [Seed.t]

  @typedoc """
    An array of track object (simplified) ordered according to the parameters supplied.
  """
  @type tracks :: [TrackSimple.t]

  @typedoc """
    The number of tracks available after min_* and max_* filters have been applied.
  """
  @type after_filtering_size :: integer

  @typedoc """
    The number of tracks available after relinking for regional availability.
  """
  @type after_relinking_size :: integer

  @typedoc """
    A link to the full track or artist data for this seed.
    For tracks this will be a link to a Track Object.
    For artists a link to an Artist Object.
    For genre seeds, this value will be null.
  """
  @type href :: String.t | nil

  @typedoc """
    The id used to select this seed.This will be the same as the string used in the seed_artists,
    seed_tracks or seed_genres parameter.
  """
  @type id :: String.t

  @typedoc """
    The number of recommended tracks available for this seed.
  """
  @type initial_pool_size :: integer

  @typedoc """
    The entity type of this seed. One of artist , track or genre.
  """
  @type type :: String.t

  defstruct [
    :seeds,
    :tracks,
  ]

  @typedoc "A Recommendations object."
  @type t :: %__MODULE__{
               seeds: Recommendations.seeds,
               tracks: Recommendations.tracks,
             }

  def as do
    %__MODULE__{
      seeds: [Seed.as()],
      tracks: [TrackSimple.as()]
    }
  end
end
