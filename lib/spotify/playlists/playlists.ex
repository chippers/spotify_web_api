defmodule Spotify.Playlists do
  alias Spotify.Playlists.{PlaylistFull, PlaylistSimple, PlaylistTrack}
  alias Spotify.Users

  def as_track()do
    %PlaylistTrack{
      added_by: Users.as_public(),
      track: %Spotify.Tracks.TrackFull{}
    }
  end

  def as_full() do
    %PlaylistFull{
      images: [%Spotify.Image{}],
      owner: Users.as_public(),
      tracks: Spotify.Pagings.as(__MODULE__.as_track())
    }
  end

  def as_simple() do
    %PlaylistSimple{
      images: [%Spotify.Image{}],
      owner: Users.as_public(),
      tracks: Spotify.Pagings.as(__MODULE__.as_track())
    }
  end
end
