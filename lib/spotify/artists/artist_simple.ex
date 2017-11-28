defmodule Spotify.Models.Artists.ArtistSimple do
  @moduledoc """
    A simplified artist object.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#artist-object-simplified)
  """

  @behaviour Spotify.Models.ObjectModel
  alias Spotify.Models.Artists

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
               external_urls: Artists.external_urls,
               href: Artists.href,
               id: Artists.id,
               name: Artists.name,
               type: Artists.type,
               uri: Artists.uri,
             }

  def as do
    %__MODULE__{}
  end
end
