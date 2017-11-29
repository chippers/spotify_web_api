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
               external_urls: Artists.external_urls | nil,
               followers: Artists.followers | nil,
               genres: Artists.genres | nil,
               href: Artists.href | nil,
               id: Artists.id | nil,
               images: Artists.images | nil,
               name: Artists.name | nil,
               popularity: Artists.popularity | nil,
               type: Artists.type | nil,
               uri: Artists.uri | nil,
             }

  def as do
    %__MODULE__{
      followers: Followers.as(),
      images: [Image.as()]
    }
  end
end
