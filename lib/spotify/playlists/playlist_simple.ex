defmodule Spotify.Models.Playlists.PlaylistSimple do
  @moduledoc """
    A simplified Playlist object.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#playlist-object-simplified)
  """

  @behaviour Spotify.Models.ObjectModel
  alias Spotify.Models.Playlists
  alias Spotify.Models.Playlists.PlaylistTrack
  alias Spotify.Models.Pagings.Paging
  alias Spotify.Models.Users.UserPublic
  alias Spotify.Models.Image

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
               collaborative: Playlists.collaborative,
               external_urls: Playlists.external_urls,
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
      images: [Image.as()],
      owner: UserPublic.as(),
      tracks: Paging.wrap(PlaylistTrack.as())
    }
  end
end
