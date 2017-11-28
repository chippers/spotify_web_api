defmodule Spotify.Albums.SavedAlbum do
  @moduledoc """
    A saved Album object, holding a full album object.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#saved-album-object)
  """

  @behaviour Spotify.ObjectModel
  alias Spotify.Albums
  alias Spotify.Albums.AlbumFull

  defstruct [
    :added_at,
    :album,
  ]

  @typedoc "A saved Album object."
  @type t :: %__MODULE__{
               added_at: Albums.added_at,
               album: Albums.album,
             }

  def as do
    %__MODULE__{
      album: AlbumFull.as()
    }
  end
end

defimpl Poison.Decoder, for: Spotify.Albums.SavedAlbum do
  def decode(%{added_at: added_at} = saved_album, _options) do
    case DateTime.from_iso8601(added_at) do
      {:ok, datetime} -> %{saved_album | added_at: datetime}
      {:error, _} -> saved_album
    end
  end
end
