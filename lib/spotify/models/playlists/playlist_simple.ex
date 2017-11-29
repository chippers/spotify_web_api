defmodule Spotify.Playlists.PlaylistSimple do
  @moduledoc """
    A simplified Playlist object.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#playlist-object-simplified)
  """

  @behaviour Spotify.ObjectModel
  alias Spotify.Playlists
  alias Spotify.Playlists.PlaylistTrack
  alias Spotify.Pagings.Paging
  alias Spotify.Users.UserPublic
  alias Spotify.Image

  defstruct [
    :collaborative,
    :external_urls,
    :href,
    :id,
    :images,
    :name,
    :owner,
    :public,
    :snapshot_id,
    :tracks,
    :type,
    :uri,
  ]

  @typedoc "A simplified Playlist object."
  @type t :: %__MODULE__{
               collaborative: Playlists.collaborative | nil,
               external_urls: Playlists.external_urls | nil,
               href: Playlists.href | nil,
               id: Playlists.id | nil,
               images: Playlists.images | nil,
               name: Playlists.name | nil,
               owner: Playlists.owner | nil,
               public: Playlists.public | nil,
               snapshot_id: Playlists.snapshot_id | nil,
               tracks: Playlists.tracks | nil,
               type: Playlists.type | nil,
               uri: Playlists.uri | nil,
             }

  def as do
    %__MODULE__{
      images: [Image.as()],
      owner: UserPublic.as(),
      tracks: Paging.wrap(PlaylistTrack.as())
    }
  end
end
