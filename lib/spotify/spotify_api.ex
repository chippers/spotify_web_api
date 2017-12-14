defmodule Spotify.SpotifyAPI do
  #@moduledoc false
  alias Spotify.Credentials

  alias Spotify.Pagings.Paging
  alias Spotify.Tracks.TrackSimple
  alias Spotify.Albums.AlbumFull

  @type creds :: Credentials.t
  @type id :: Spotify.spotify_id
  @type params :: map

  def handle_response({:error, _} = error, _as), do: error
  def handle_response({:ok, }) do

  end

  @callback get_album(creds, id, params) :: {:ok, AlbumFull.t} | {:error, any}
  @callback get_albums(creds, [id], params) :: {:ok, [AlbumFull.t]} | {:error, any}
  @callback get_album_tracks(creds, id, params) :: {:ok, Paging.t(TrackSimple.t)} | {:error, any}



end
