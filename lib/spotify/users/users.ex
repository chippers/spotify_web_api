defmodule Spotify.Users do
  alias Spotify.Users.{UserPublic, UserPrivate, PlayHistory}
  alias Spotify.Tracks

  def as_private() do
    %UserPrivate{
      images: [%Spotify.Image{}],
    }
  end

  def as_public() do
    %UserPublic{
      images: [%Spotify.Image{}],
    }
  end

  def as_play_history() do
    %PlayHistory{
      track: Tracks.as_simple(),
      context: %Spotify.Context{},
    }
  end
end