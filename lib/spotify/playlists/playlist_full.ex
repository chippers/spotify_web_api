defmodule Spotify.Models.Playlists.PlaylistFull do
  @moduledoc """
    A full Playlist object.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#playlist-object-full)
  """

  @behaviour Spotify.Models.ObjectModel
  alias Spotify.Models.Playlists
  alias Spotify.Models.Playlists.PlaylistTrack
  alias Spotify.Models.Pagings.Paging
  alias Spotify.Models.Users.UserPublic
  alias Spotify.Models.Followers
  alias Spotify.Models.Image

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
               collaborative: Playlists.collaborative,
               description: Playlists.description,
               external_urls: Playlists.external_urls,
               followers: Playlists.followers,
               href: Playlists.href,
               id: Playlists.id,
               images: Playlists.images,
               name: Playlists.name,
               owner: Playlists.owner,
               public: Playlists.public,
               snapshot_id: Playlists.snapshot_id,
               tracks: Playlists.tracks,
               type: Playlists.type,
               uri: Playlists.uri,
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
