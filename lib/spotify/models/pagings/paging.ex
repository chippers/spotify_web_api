defmodule Spotify.Pagings.Paging do
  @moduledoc """
    The offset-based paging object is a container for a set of objects.

    It contains a key called `items` (whose value is an array of the requested objects)
    along with other keys like `previous`, `next`, and `limit` that can be useful in future calls.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#paging-object)
  """

  alias Spotify.Pagings

  defstruct [
    :href,
    :items,
    :limit,
    :next,
    :offset,
    :previous,
    :total,
  ]

  @typedoc "The offset-based paging object."
  @type t(item_type) :: %__MODULE__{
                          href: Pagings.href | nil,
                          items: Pagings.items(item_type) | nil,
                          limit: Pagings.limit | nil,
                          next: Pagings.next | nil,
                          offset: Pagings.offset | nil,
                          previous: Pagings.previous | nil,
                          total: Pagings.total | nil,
                        }

  def wrap(struct) do
    %__MODULE__{
      items: [struct]
    }
  end
end
