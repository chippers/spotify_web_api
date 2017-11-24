defmodule Spotify.Recommendations.Recommendations do
  # https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#recommendations-object
  @moduledoc """
  A Recommendations object.

    | Key   | Value Description |
    | :---- | :---------------- |
    | seeds | An array of recommendation seed objects. |
    | tracks | An array of track object (simplified) ordered according to the parameters supplied. |
  """

  defstruct [
    :seeds,
    :tracks,
  ]

  @type t :: %Spotify.Recommendations.Recommendations{
               seeds: [Spotify.Recommendations.RecommendationsSeed.t],
               tracks: [Spotify.Tracks.TrackSimple.t],
             }
end