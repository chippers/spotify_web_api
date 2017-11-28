defmodule Spotify.Models.Error do
  @moduledoc """
    An object containing error information.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#error-object)
  """

  @behaviour Spotify.Models.ObjectModel

  @typedoc """
    The HTTP status code (also returned in the response header;
    see Response Status Codes for more information).
  """
  @type status :: integer

  @typedoc """
    A short description of the cause of the error.
  """
  @type message :: String.t

  defstruct [
    :status,
    :message,
  ]

  @typedoc """
    The full Error object.

    Contains all the values listed in the
    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#error-object)
  """
  @type t :: %__MODULE__{
               status: __MODULE__.status,
               message: __MODULE__.message,
             }

  def as do
    %__MODULE__{}
  end
end
