defmodule Spotify.Playlists.PlaylistFull do
  @moduledoc """
    A full Playlist object.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#playlist-object-full)
  """

  @behaviour Spotify.ObjectModel
  alias Spotify.Playlists
  alias Spotify.Playlists.PlaylistTrack
  alias Spotify.Pagings.Paging
  alias Spotify.Users.UserPublic
  alias Spotify.Followers
  alias Spotify.Image

  defstruct [
    :collaborative,
    :description,
    :external_urls,
    :followers,
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

  @typedoc "A full Playlist object."
  @type t :: %__MODULE__{
               collaborative: Playlists.collaborative | nil,
               description: Playlists.description | nil,
               external_urls: Playlists.external_urls | nil,
               followers: Playlists.followers | nil,
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
      followers: Followers.as(),
      images: [Image.as()],
      owner: UserPublic.as(),
      tracks: Paging.wrap(PlaylistTrack.as())
    }
  end
end
