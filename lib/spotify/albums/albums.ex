defmodule Spotify.Albums do
  alias Spotify.Albums.{AlbumFull, AlbumSimple, SavedAlbum}
  alias Spotify.Artists

  def as_full() do
    %AlbumFull{
      artists: [Artists.as_simple()],
      copyrights: [%Spotify.Copyright{}],
      images: [%Spotify.Image{}],
      tracks: Spotify.Pagings.as(Spotify.Tracks.as_simple()),
    }
  end

  def as_simple() do
    %AlbumSimple{
      artists: [Artists.as_simple()],
      images: [%Spotify.Image{}],
    }
  end

  def as_saved() do
    %SavedAlbum{
      album: __MODULE__.as_full(),
    }
  end

  def test do
    File.read!("test.json")
  end
end
