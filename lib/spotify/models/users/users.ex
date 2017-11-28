defmodule Spotify.Users do
  @moduledoc """
    For manipulating users.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/users-profile/)
  """

  alias Spotify.{ExternalUrls, Followers, Image, Timestamp, Context}
  alias Spotify.Tracks.TrackSimple

  @typedoc """
    The user’s date-of-birth. This field is only available when
    the current user has granted access to the `user-read-birthdate` scope.
  """
  @type birthdate :: String.t

  @typedoc """
    The country of the user, as set in the user’s account profile.
    An ISO 3166-1 alpha-2 country code. This field is only available
    when the current user has granted access to the `user-read-private` scope.
  """
  @type country :: String.t

  @typedoc """
    The name displayed on the user’s profile. null if not available.
  """
  @type display_name :: String.t | nil

  @typedoc """
    The user’s email address, as entered by the user when creating their account.
    Important! This email address is unverified; there is no proof that it
    actually belongs to the user. This field is only available when the current
    user has granted access to the `user-read-email` scope.
  """
  @type email :: String.t

  @typedoc """
    Known public external URLs for this user.
  """
  @type external_urls :: ExternalUrls.t

  @typedoc """
    Information about the followers of this user.
  """
  @type followers :: Followers.t

  @typedoc """
    A link to the Web API endpoint for this user.
  """
  @type href :: String.t

  @typedoc """
    The Spotify user ID for this user.
  """
  @type id :: String.t

  @typedoc """
    The user’s profile image.
  """
  @type images :: [Image.t]

  @typedoc """
    The user’s Spotify subscription level: `premium`, `free`, etc.
    (The subscription level `open` can be considered the same as `free`.)
    This field is only available when the current user has
    granted access to the `user-read-private` scope.
  """
  @type product :: String.t

  @typedoc """
    The object type: `user`
  """
  @type type :: String.t

  @typedoc """
    The Spotify URI for this user.
  """
  @type uri :: String.t

  @typedoc """
    The track the user listened to.
  """
  @type track :: TrackSimple.t

  @typedoc """
    The date and time the track was played.
  """
  @type played_at :: Timestamp.t

  @typedoc """
    The context the track was played from.
  """
  @type context :: Context.t
end
