defmodule Spotify.Artists do
  alias Spotify.Artists.{ArtistSimple, ArtistFull}

  def as_full() do
    %ArtistFull{
      images: [%Spotify.Image{}]
    }
  end

  def as_simple(), do: %ArtistSimple{}
end
