defmodule Spotify.Recommendations.RecommendationsSeed do
  # https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#recommendations-seed-object
  @moduledoc """
    A Recommendations Seed object.

    | Key   | Value Description |
    | :---- | :---------------- |
    | afterFilteringSize	|	The number of tracks available after min_* and max_* filters have been applied. |
    | afterRelinkingSize	|	The number of tracks available after relinking for regional availability. |
    | href	|	A link to the full track or artist data for this seed. For tracks this will be a link to a Track Object. For artists a link to an Artist Object. For genre seeds, this value will be null. |
    | id	|	The id used to select this seed. This will be the same as the string used in the seed_artists , seed_tracks or seed_genres parameter. |
    | initialPoolSize	|	The number of recommended tracks available for this seed. |
    | type	|	The entity type of this seed. One of artist , track or genre. |
  """

  defstruct [
    :afterFilteringSize,
    :afterRelinkingSize,
    :href,
    :id,
    :initialPoolSize,
    :type,
  ]

  @type t :: %Spotify.Recommendations.RecommendationsSeed{
               afterFilteringSize: integer,
               afterRelinkingSize: integer,
               href: String.t,
               id: String.t,
               initialPoolSize: integer,
               type: String.t,
             }
end