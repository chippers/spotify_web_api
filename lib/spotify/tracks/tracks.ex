defmodule Spotify.Tracks do
  alias Spotify.Tracks.{TrackFull, TrackSimple, TrackLink, SavedTrack}
  alias Spotify.{Albums, Artists}

  def as_link(), do: %TrackLink{}

  def as_full() do
    %TrackFull{
      album: Albums.as_simple(),
      artists: [Artists.as_simple()],
      linked_from: __MODULE__.as_link(),
    }
  end

  def as_simple() do
    %TrackSimple{
      artists: [Artists.as_simple()],
      linked_from: __MODULE__.as_link(),
    }
  end

  def as_saved() do
    %SavedTrack{
      track: __MODULE__.as_full(),
    }
  end
end
