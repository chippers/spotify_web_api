defmodule Spotify.Pagings.PagingCursor do
  # https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#cursor-based-paging-object
  @moduledoc """
    The cursor-based paging object is a container for a set of objects.
    It contains a key called `items` (whose value is an array of the requested objects)
    along with other keys like `next` and `cursors` that can be useful in future calls.

    | Key   | Value Description |
    | :---- | :---------------- |
    | href	|	A link to the Web API endpoint returning the full result of the request. |
    | items	| The requested data. |
    | limit	|	The maximum number of items in the response (as set in the query or by default). |
    | next	|	URL to the next page of items. ( null if none) |
    | cursors	|		The cursors used to find the next set of items. |
    | total	|	The total number of items available to return. |
  """

  defstruct [
    :href,
    :items,
    :limit,
    :next,
    :cursors,
    :total,
  ]

  @type t(item_type) :: %Spotify.Pagings.PagingCursor{
                          href: String.t,
                          items: list(item_type),
                          limit: integer,
                          next: String.t,
                          cursors: Spotify.Cursor.t,
                          total: integer,
                        }
end