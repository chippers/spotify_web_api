defmodule Spotify.Albums.SavedAlbum do
  # https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#saved-album-object
  @moduledoc """
    A Saved Album object, holding a full album object.

    | Key   | Value Description |
    | :---- | :---------------- |
    | added_at | The date and time the album was saved. |
    | album | Information about the album. |
  """

  defstruct [
    :added_at,
    :album,
  ]

  @type t :: %Spotify.Albums.SavedAlbum{
               added_at: Spotify.Timestamp.t,
               album: Spotify.Albums.AlbumFull.t,
             }
end
