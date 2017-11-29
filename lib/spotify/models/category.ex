defmodule Spotify.Category do
  @moduledoc """
    An object containing category information.
  
    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#category-object)
  """

  @behaviour Spotify.ObjectModel
  alias Spotify.Image

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
               href: __MODULE__.href | nil,
               icons: __MODULE__.icons | nil,
               id: __MODULE__.id | nil,
               name: __MODULE__.name | nil,
             }

  def as do
    %__MODULE__{
      icons: [Image.as()]
    }
  end
end
