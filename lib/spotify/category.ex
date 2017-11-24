defmodule Spotify.Category do
  # https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#category-object
  @moduledoc """
    An object containing category information.

    | Key   | Value Description |
    | :---- | :---------------- |
    | href	|	A link to the Web API endpoint returning full details of the category. |
    | icons	|	The category icon, in various sizes. |
    | id	|	The Spotify category ID of the category. |
    | name	|	The name of the category. |
  """

  defstruct [
    :href,
    :icons,
    :id,
    :name,
  ]

  @type t :: %Spotify.Category{
               href: String.t,
               icons: [Spotify.Image.t],
               id: String.t,
               name: String.t,
             }
end