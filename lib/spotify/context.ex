defmodule Spotify.Context do
  @moduledoc """
   A Context object.
  
    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#context-object)
  """

  @behaviour Spotify.ObjectModel
  alias Spotify.ExternalUrls

  @typedoc """
    The object type, e.g. `artist`, `playlist`, `album`.
  """
  @type type :: String.t

  @typedoc """
    A link to the Web API endpoint providing full details of the track.
  """
  @type href :: String.t

  @typedoc """
    External URLs for this context.
  """
  @type external_urls :: ExternalUrls.t

  @typedoc """
    The Spotify URI for the context.
  """
  @type uri :: String.t

  defstruct [
    :type,
    :href,
    :external_urls,
    :uri,
  ]

  @typedoc """
    The full Context object.

    Contains all the values listed in the
    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#context-object)
  """
  @type t :: %__MODULE__{
               type: __MODULE__.type,
               href: __MODULE__.href,
               external_urls: __MODULE__.external_urls,
               uri: __MODULE__.uri,
             }

  def as do
    %__MODULE__{}
  end
end
