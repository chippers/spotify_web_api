defmodule Spotify.Copyright do
  @moduledoc """
    An object containing copyright statements.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#copyright-object)
  """

  @behaviour Spotify.ObjectModel

  @typedoc """
    The copyright text for this album.
  """
  @type text :: String.t

  @typedoc """
    The type of copyright: `C` = the copyright,
    `P` = the sound recording (performance) copyright.
  """
  @type type :: String.t

  defstruct [
    :text,
    :type,
  ]

  @typedoc """
    The full Copyright object.

    Contains all the values listed in the
    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#copyright-object)
  """
  @type t :: %__MODULE__{
               text: String.t,
               type: String.t,
             }

  def as do
    %__MODULE__{}
  end
end
