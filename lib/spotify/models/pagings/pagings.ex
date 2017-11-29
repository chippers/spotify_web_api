defmodule Spotify.Pagings do
  @moduledoc """
    Pagings Objects.
  """

  @typedoc """
    A link to the Web API endpoint returning the full result of the request.
  """
  @type href :: String.t

  @typedoc """
    The requested data.
  """
  @type items(item_type) :: [item_type]

  @typedoc """
    The maximum number of items in the response (as set in the query or by default).
  """
  @type limit :: integer

  @typedoc """
    URL to the next page of items. ( null if none)
  """
  @type next :: String.t | nil

  @typedoc """
    The cursors used to find the next set of items.
  """
  @type cursors :: Spotify.Cursor.t

  @typedoc """
    The offset of the items returned (as set in the query or by default).
  """
  @type offset :: integer

  @typedoc """
    URL to the previous page of items. ( null if none)
  """
  @type previous :: String.t | nil

  @typedoc """
    The total number of items available to return.
  """
  @type total :: integer
end
