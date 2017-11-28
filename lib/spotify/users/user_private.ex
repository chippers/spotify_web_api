defmodule Spotify.Models.Users.UserPrivate do
  @moduledoc """
    A private User object.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#user-object-private)
  """

  @behaviour Spotify.Models.ObjectModel
  alias Spotify.Models.Users
  alias Spotify.Models.Image
  alias Spotify.Models.Followers

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
               birthdate: Users.birthdate,
               country: Users.country,
               display_name: Users.display_name,
               email: Users.email,
               external_urls: Users.external_urls,
               followers: Users.followers,
               href: Users.href,
               id: Users.id,
               images: Users.images,
               product: Users.product,
               type: Users.type,
               uri: Users.uri,
             }

  def as do
    %__MODULE__{
      followers: Followers.as(),
      images: [Image.as()]
    }
  end
end
