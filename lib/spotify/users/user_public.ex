defmodule Spotify.Users.UserPublic do
  @moduledoc """
    A public User object.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#user-object-public)
  """

  @behaviour Spotify.ObjectModel
  alias Spotify.Users
  alias Spotify.Image
  alias Spotify.Followers

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

  @typedoc "A public User object."
  @type t :: %__MODULE__{
               display_name: Users.display_name,
               external_urls: Users.external_urls,
               followers: Users.followers,
               href: Users.href,
               id: Users.id,
               images: Users.images,
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
