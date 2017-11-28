defmodule Spotify.Artists.ArtistFull do
  @moduledoc """
    A full Artist object.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#artist-object-full)
  """

  @behaviour Spotify.ObjectModel
  alias Spotify.Artists
  alias Spotify.Followers
  alias Spotify.Image

  defstruct [
    :external_urls,
    :followers,
    :genres,
    :href,
    :id,
    :images,
    :name,
    :popularity,
    :type,
    :uri,
  ]

  @typedoc "A full Artist object."
  @type t :: %__MODULE__{
               external_urls: Artists.external_urls,
               followers: Artists.followers,
               genres: Artists.genres,
               href: Artists.href,
               id: Artists.id,
               images: Artists.images,
               name: Artists.name,
               popularity: Artists.popularity,
               type: Artists.type,
               uri: Artists.uri,
             }

  def as do
    %__MODULE__{
      followers: Followers.as(),
      images: [Image.as()]
    }
  end
end
