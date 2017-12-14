defmodule Spotify.API.Albums do
  @moduledoc "album api"
  alias Spotify.Credentials
  alias Spotify.Pagings.Paging
  alias Spotify.Tracks.TrackSimple
  alias Spotify.Albums.AlbumFull
  alias HTTPoison.Response
  alias Spotify.API.APIHelpers

  @base_url "https://api.spotify.com/v1/albums"

  @doc """
    Get Spotify catalog information for a single album.

    | Query Parameter | Status | Value |
    | :-------------- | :----- | :---- |
    | market | **Optional** | An ISO 3166-1 alpha-2 country code. Provide this parameter if you want to apply Track Relinking. |

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/albums/get-album/)
  """
  @spec get_album(Credentials.t, Spotify.spotify_id, Keyword.t) :: {:ok, AlbumFull.t} | APIHelpers.error_response
  def get_album(%Credentials{} = creds, id, params \\ []) do
    headers = Credentials.format_header(creds)

    with response <- HTTPoison.get("#{@base_url}/#{id}", headers, params: params),
         {:ok, body} <- APIHelpers.parse_response(response)
      do
        {:ok, Poison.decode(body, as: AlbumFull.as())}
    end
  end

  @doc """
    Get Spotify catalog information for multiple albums identified by their Spotify IDs.

    | Query Parameter | Status | Value |
    | :-------------- | :----- | :---- |
    | ids	| **Required** | A comma-separated list of the Spotify IDs for the albums. Maximum: 20 IDs. |
    | market | **Optional** | An ISO 3166-1 alpha-2 country code. Provide this parameter if you want to apply Track Relinking. |

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/albums/get-several-albums/)
  """
  @spec get_albums(Credentials.t, [Spotify.spotify_id], Keyword.t) :: {:ok, [AlbumFull.t]} | APIHelpers.error_response
  def get_albums(%Credentials{} = creds, ids, params \\ []) do
    headers = Credentials.format_header(creds)
    params = Keyword.merge(params, ids: Enum.join(ids, ","))

    with response <- HTTPoison.get(@base_url, headers, params: params),
         {:ok, body} <- APIHelpers.parse_response(response)
      do
        {:ok, Poison.decode(body, as: %{"albums" => [AlbumFull.as()]})}
    end
  end

  @doc """
    Get Spotify catalog information about an album’s tracks.

    Optional parameters can be used to limit the number of tracks returned.

    | Query Parameter | Status | Value |
    | :-------------- | :----- | :---- |
    | limit | **Optional** | The maximum number of tracks to return. Default: `20`. Minimum: `1`. Maximum: `50`. |
    | offset | **Optional** | The index of the first track to return. Default: `0` (the first object). Use with limit to get the next set of tracks. |
    | market | **Optional** | An ISO 3166-1 alpha-2 country code. Provide this parameter if you want to apply Track Relinking. |

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/albums/get-albums-tracks/)
  """
  @spec get_album_tracks(Credentials.t, Spotify.spotify_id, map) :: {:ok, Paging.t(TrackSimple.t)} | APIHelpers.error_response
  def get_album_tracks(%Credentials{} = creds, id, params) do
    headers = Credentials.format_header(creds)

    with response <- HTTPoison.get("#{@base_url}/#{id}/tracks", headers, params: params),
         {:ok, body} <- APIHelpers.parse_response(response)
      do
        {:ok, Poison.decode(body, as: Paging.wrap(TrackSimple.as()))}
    end
  end
end
