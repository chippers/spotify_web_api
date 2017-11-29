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
               display_name: Users.display_name | nil,
               external_urls: Users.external_urls | nil,
               followers: Users.followers | nil,
               href: Users.href | nil,
               id: Users.id | nil,
               images: Users.images | nil,
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
