defmodule Spotify.Pagings.PagingCursor do
  @moduledoc """
    The cursor-based paging object is a container for a set of objects.

    It contains a key called `items` (whose value is an array of the requested objects)
    along with other keys like `next` and `cursors` that can be useful in future calls.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#cursor-based-paging-object)
  """

  alias Spotify.Pagings
  alias Spotify.Cursor

  defstruct [
    :href,
    :items,
    :limit,
    :next,
    :cursors,
    :total,
  ]

  @typedoc "The cursor-based paging object."
  @type t(item_type) :: %__MODULE__{
                          href: Pagings.href | nil,
                          items: Pagings.items(item_type) | nil,
                          limit: Pagings.limit | nil,
                          next: Pagings.next | nil,
                          cursors: Pagings.cursors | nil,
                          total: Pagings.total | nil,
                        }

  def wrap(struct) do
    %__MODULE__{
      cursors: Cursor.as(),
      items: [struct]
    }
  end
end
