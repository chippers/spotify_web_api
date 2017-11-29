defmodule Spotify.Artists.ArtistSimple do
  @moduledoc """
    A simplified artist object.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#artist-object-simplified)
  """

  @behaviour Spotify.ObjectModel
  alias Spotify.Artists

  defstruct [
    :external_urls,
    :href,
    :id,
    :name,
    :type,
    :uri
  ]

  @typedoc "A simplified artist object."
  @type t :: %__MODULE__{
               external_urls: Artists.external_urls | nil,
               href: Artists.href | nil,
               id: Artists.id | nil,
               name: Artists.name | nil,
               type: Artists.type | nil,
               uri: Artists.uri | nil,
             }

  def as do
    %__MODULE__{}
  end
end
