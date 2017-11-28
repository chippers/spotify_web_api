defmodule Spotify.Models.Category do
  @moduledoc """
    An object containing category information.
  
    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#category-object)
  """

  @behaviour Spotify.Models.ObjectModel
  alias Spotify.Models.Image

  @typedoc """
    A link to the Web API endpoint returning full details of the category.
  """
  @type href :: String.t

  @typedoc """
    The category icon, in various sizes.
  """
  @type icons :: [Image.t]

  @typedoc """
    The Spotify category ID of the category.
  """
  @type id :: String.t

  @typedoc """
    The name of the category.
  """
  @type name :: String.t

  defstruct [
    :href,
    :icons,
    :id,
    :name,
  ]

  @typedoc """
    The full Category object.

    Contains all the values listed in the
    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#category-object)
  """
  @type t :: %__MODULE__{
               href: __MODULE__.href,
               icons: __MODULE__.icons,
               id: __MODULE__.id,
               name: __MODULE__.name,
             }

  def as do
    %__MODULE__{
      icons: [Image.as()]
    }
  end
end
