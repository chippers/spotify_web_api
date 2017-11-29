defmodule Spotify.Recommendations.Seed do
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
               afterFilteringSize: Recommendations.after_filtering_size | nil,
               afterRelinkingSize: Recommendations.after_relinking_size | nil,
               href: Recommendations.href | nil,
               id: Recommendations.id | nil,
               initialPoolSize: Recommendations.initial_pool_size | nil,
               type: Recommendations.type | nil,
             }

  def as do
    %__MODULE__{}
  end
end
