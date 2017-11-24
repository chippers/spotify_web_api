defmodule Spotify.Pagings do
  alias Spotify.Pagings.{Paging, PagingCursor}

  def as(struct), do: %Paging{items: [struct]}
  def as_cursor(struct), do: %PagingCursor{items: [struct]}
end