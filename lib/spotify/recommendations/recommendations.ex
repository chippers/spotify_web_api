defmodule Spotify.Recommendations do
  alias Spotify.Recommendations.{Recommendations, RecommendationsSeed}

  def as_seed(), do: %RecommendationsSeed{}

  def as() do
    %Recommendations{
      seeds: [__MODULE__.as_seed()],
      tracks: [Spotify.Tracks.as_simple()]
    }
  end
end