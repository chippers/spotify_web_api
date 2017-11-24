defmodule Spotify.Playlists.PlaylistFull do
  # https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#playlist-object-full
  @moduledoc """
    A full Playlist object.

    | Key   | Value Description |
    | :---- | :---------------- |
    | collaborative	|	`true` if the owner allows other users to modify the playlist. |
    | description	|	The playlist description. Only returned for modified, verified playlists, otherwise `null`. |
    | external_urls	|	Known external URLs for this playlist. |
    | followers	|	Information about the followers of the playlist. |
    | href	|	A link to the Web API endpoint providing full details of the playlist. |
    | id	|	The Spotify ID for the playlist. |
    | images	|	Images for the playlist. The array may be empty or contain up to three images. The images are returned by size in descending order. See Working with Playlists.Note: If returned, the source URL for the image ( url ) is temporary and will expire in less than a day. |
    | name	|	The name of the playlist. |
    | owner	|	The user who owns the playlist |
    | public	| The playlist’s public/private status: `true` the playlist is public, `false` the playlist is private, `null` the playlist status is not relevant. For more about public/private status, see Working with Playlists. |
    | snapshot_id	|	The version identifier for the current playlist. Can be supplied in other requests to target a specific playlist version: see Remove tracks from a playlist |
    | tracks	|	Information about the tracks of the playlist. |
    | type	|	The object type: “playlist” |
    | uri	|	The Spotify URI for the playlist. |
  """

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

  @type t :: %Spotify.Playlists.PlaylistFull{
               collaborative: boolean,
               description: String.t,
               external_urls: Spotify.ExternalUrls.t,
               followers: Spotify.Followers.t,
               href: String.t,
               id: String.t,
               images: [Spotify.Image.t],
               name: String.t,
               owner: Spotify.Users.UserPublic.t,
               public: boolean | nil,
               snapshot_id: String.t,
               tracks: Spotify.Pagings.Paging.t(Spotify.Playlists.PlaylistTrack.t),
               type: String.t,
               uri: String.t,
             }

end
