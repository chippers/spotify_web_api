defmodule Spotify.Users.UserPrivate do
  # https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#user-object-private
  @moduledoc """
    A private User object.

    | Key   | Value Description |
    | :---- | :---------------- |
    | birthdate	|	The user’s date-of-birth. This field is only available when the current user has granted access to the user-read-birthdate scope.
    | country	|	The country of the user, as set in the user’s account profile. An ISO 3166-1 alpha-2 country code. This field is only available when the current user has granted access to the user-read-private scope.
    | display_name	|	The name displayed on the user’s profile. null if not available.
    | email	|	The user’s email address, as entered by the user when creating their account. Important! This email address is unverified; there is no proof that it actually belongs to the user. This field is only available when the current user has granted access to the user-read-email scope.
    | external_urls	|	Known external URLs for this user.
    | followers	|	Information about the followers of the user.
    | href	|	A link to the Web API endpoint for this user.
    | id	|	The Spotify user ID for the user
    | images	|	The user’s profile image.
    | product	|	The user’s Spotify subscription level: “premium”, “free”, etc. (The subscription level “open” can be considered the same as “free”.) This field is only available when the current user has granted access to the user-read-private scope.
    | type	|	The object type: “user”
    | uri	|	The Spotify URI for the user.
  """

  defstruct [
    :birthdate,
    :country,
    :display_name,
    :email,
    :external_urls,
    :followers,
    :href,
    :id,
    :images,
    :product,
    :type,
    :uri,
  ]

  @type t :: %Spotify.Users.UserPrivate{
               birthdate: String.t,
               country: String.t,
               display_name: String.t,
               email: String.t,
               external_urls: Spotify.ExternalUrls.t,
               followers: Spotify.Followers.t,
               href: String.t,
               id: String.t,
               images: [Spotify.Image.t],
               product: String.t,
               type: String.t,
               uri: String.t,
             }
end