defmodule Spotify.Recommendations.RecommendationsSeed do
  @moduledoc """
    A Recommendations Seed object.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#recommendations-seed-object)
  """

  @behaviour Spotify.ObjectModel
  alias Spotify.Recommendations

  defstruct [
    :afterFilteringSize,
    :afterRelinkingSize,
    :href,
    :id,
    :initialPoolSize,
    :type,
  ]

  @typedoc "A Recommendations Seed object."
  @type t :: %__MODULE__{
               afterFilteringSize: Recommendations.after_filtering_size,
               afterRelinkingSize: Recommendations.after_relinking_size,
               href: Recommendations.href,
               id: Recommendations.id,
               initialPoolSize: Recommendations.initial_pool_size,
               type: Recommendations.type,
             }

  def as do
    %__MODULE__{}
  end
end
