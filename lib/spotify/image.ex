defmodule Spotify.Image do
  # https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#image-object
  @moduledoc """
    An object containing image information.

    | Key   | Value Description |
    | :---- | :---------------- |
    |height	|	The image height in pixels. If unknown: null or not returned. |
    |url	  |	The source URL of the image. |
    |width	|	The image width in pixels. If unknown: null or not returned. |
  """

  defstruct [
    :height,
    :url,
    :width,
  ]

  @type t :: %Spotify.Image{
               height: integer,
               url: String.t,
               width: integer,
             }
end