defmodule Spotify.Tracks.TrackLink do
  @moduledoc """
    A Track Link object.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#track-link)
  """

  @behaviour Spotify.ObjectModel
  alias Spotify.Tracks

  defstruct [
    :external_urls,
    :href,
    :id,
    :type,
    :uri,
  ]

  @typedoc "A Track Link object."
  @type t :: %__MODULE__{
               external_urls: Tracks.external_urls,
               href: Tracks.href,
               id: Tracks.id,
               type: Tracks.type,
               uri: Tracks.uri,
             }

  def as do
    %__MODULE__{}
  end
end
