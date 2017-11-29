defmodule Spotify.Users.UserPrivate do
  @moduledoc """
    A private User object.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#user-object-private)
  """

  @behaviour Spotify.ObjectModel
  alias Spotify.Users
  alias Spotify.Image
  alias Spotify.Followers

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

  @typedoc "A private User object."
  @type t :: %__MODULE__{
               birthdate: Users.birthdate | nil,
               country: Users.country | nil,
               display_name: Users.display_name | nil,
               email: Users.email | nil,
               external_urls: Users.external_urls | nil,
               followers: Users.followers | nil,
               href: Users.href | nil,
               id: Users.id | nil,
               images: Users.images | nil,
               product: Users.product | nil,
               type: Users.type | nil,
               uri: Users.uri | nil,
             }

  def as do
    %__MODULE__{
      followers: Followers.as(),
      images: [Image.as()]
    }
  end
end
