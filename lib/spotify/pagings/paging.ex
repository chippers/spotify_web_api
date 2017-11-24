defmodule Spotify.Pagings.Paging do
  # https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#paging-object
  @moduledoc """
    The offset-based paging object is a container for a set of objects.
    It contains a key called `items` (whose value is an array of the requested objects)
    along with other keys like `previous`, `next`, and `limit` that can be useful in future calls.

    | Key   | Value Description |
    | :---- | :---------------- |
    | href	|	A link to the Web API endpoint returning the full result of the request. |
    | items	| The requested data. |
    | limit	|	The maximum number of items in the response (as set in the query or by default). |
    | next	|	URL to the next page of items. ( null if none) |
    | offset	|	The offset of the items returned (as set in the query or by default). |
    | previous	|	URL to the previous page of items. ( null if none) |
    | total	|	The total number of items available to return. |
  """

  defstruct [
    :href,
    :items,
    :limit,
    :next,
    :offset,
    :previous,
    :total,
  ]

  @type t(item_type) :: %Spotify.Pagings.Paging{
                          href: String.t,
                          items: list(item_type),
                          limit: integer,
                          next: String.t,
                          offset: integer,
                          previous: String.t,
                          total: integer,
                        }
end