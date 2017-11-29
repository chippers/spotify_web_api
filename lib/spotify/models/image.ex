defmodule Spotify.Image do
  @moduledoc """
    An object containing image information.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#image-object)
  """

  @behaviour Spotify.ObjectModel

  @typedoc """
    The image height in pixels. If unknown: `null` or not returned.
  """
  @type height :: integer

  @typedoc """
    The source URL of the image.
  """
  @type url :: String.t

  @typedoc """
    The image width in pixels. If unknown: `null` or not returned.
  """
  @type width :: integer

  defstruct [
    :height,
    :url,
    :width,
  ]

  @typedoc """
    The full Image object.

    Contains all the values listed in the
    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#image-object)
  """
  @type t :: %__MODULE__{
               height: __MODULE__.height | nil,
               url: __MODULE__.url | nil,
               width: __MODULE__.width | nil,
             }

  def as do
    %__MODULE__{}
  end
end
