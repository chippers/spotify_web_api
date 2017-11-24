defmodule Spotify.Users.UserPublic do
  # https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#user-object-public
  @moduledoc """
    A public User object.

    | Key   | Value Description |
    | :---- | :---------------- |
    | display_name	|	The name displayed on the user’s profile. null if not available. |
    | external_urls	|	Known public external URLs for this user. |
    | followers	|	Information about the followers of this user. |
    | href	|	A link to the Web API endpoint for this user. |
    | id	|	The Spotify user ID for this user. |
    | images	|	The user’s profile image. |
    | type	|	The object type: “user” |
    | uri	|	The Spotify URI for this user. |
  """

  defstruct [
  :display_name,
  :external_urls,
  :followers,
  :href,
  :id,
  :images,
  :type,
  :uri,
]

@type t :: %Spotify.Users.UserPublic{
             display_name: String.t | nil,
             external_urls: Spotify.ExternalUrls.t,
             followers: Spotify.Followers.t,
             href: String.t,
             id: String.t,
             images: [Spotify.Image.t],
             type: String.t,
             uri: String.t,
           }
end