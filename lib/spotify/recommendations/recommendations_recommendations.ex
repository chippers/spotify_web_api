defmodule Spotify.Recommendations.Recommendations do
  @moduledoc """
    A Recommendations object.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#recommendations-object)
  """

  @behaviour Spotify.ObjectModel
  alias Spotify.Recommendations
  alias Spotify.Recommendations.RecommendationsSeed
  alias Spotify.Tracks.TrackSimple

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
      seeds: [RecommendationsSeed.as()],
      tracks: [TrackSimple.as()]
    }
  end
end
