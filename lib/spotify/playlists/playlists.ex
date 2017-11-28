defmodule Spotify.Playlists do
  @moduledoc """
    For manipulating playlists.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/playlists/)
  """

  alias Spotify.Playlists.PlaylistTrack
  alias Spotify.{ExternalUrls, Followers, Image, Timestamp}
  alias Spotify.Users.UserPublic
  alias Spotify.Pagings.Paging
  alias Spotify.Tracks.TrackFull

  @typedoc """
    `true` if the owner allows other users to modify the playlist.
  """
  @type collaborative :: boolean

  @typedoc """
    The playlist description. Only returned for modified, verified playlists, otherwise `null`.
  """
  @type description :: String.t | nil

  @typedoc """
    Known external URLs for this playlist.
  """
  @type external_urls :: ExternalUrls.t

  @typedoc """
    Information about the followers of the playlist.
  """
  @type followers :: Followers.t

  @typedoc """
    A link to the Web API endpoint providing full details of the playlist.
  """
  @type href :: String.t

  @typedoc """
    The Spotify ID for the playlist.
  """
  @type id :: String.t

  @typedoc """
    Images for the playlist. The array may be empty or contain up to three images.
    The images are returned by size in descending order. See Working with Playlists.

    Note: If returned, the source URL for the image ( url ) is temporary and will
    expire in less than a day.
  """
  @type images :: [Image.t] | []

  @typedoc """
    The name of the playlist.
  """
  @type name :: String.t

  @typedoc """
    The user who owns the playlist
  """
  @type owner :: UserPublic.t

  @typedoc """
    The playlist’s public/private status: `true` the playlist is public,
    `false` the playlist is private, `null` the playlist status is not relevant.
    For more about public/private status, see Working with Playlists.
  """
  @type public :: boolean | nil

  @typedoc """
    The version identifier for the current playlist. Can be supplied in other
    requests to target a specific playlist version: see Remove tracks from a playlist
  """
  @type snapshot_id :: String.t

  @typedoc """
    Information about the tracks of the playlist.
  """
  @type tracks :: Paging.t(PlaylistTrack.t)

  @typedoc """
    The object type: `playlist`
  """
  @type type :: String.t

  @typedoc """
    The Spotify URI for the playlist.
  """
  @type uri :: String.t

  @typedoc """
    The date and time the track was added.
    Note that some very old playlists may return null in this field.
  """
  @type added_at :: Timestamp.t | nil

  @typedoc """
    The Spotify user who added the track.
    Note that some very old playlists may return null in this field.
  """
  @type added_by :: UserPublic.t | nil

  @typedoc """
    Whether this track is a local file or not.
  """
  @type is_local :: boolean

  @typedoc """
    Information about the track.
  """
  @type track :: TrackFull.t
end
