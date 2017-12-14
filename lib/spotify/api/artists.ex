defmodule Spotify.API.Artists do
  @moduledoc "artist api"
  alias Spotify.Credentials
  alias Spotify.Pagings.Paging
  alias Spotify.Tracks.TrackFull
  alias Spotify.Albums.AlbumSimple
  alias Spotify.Albums.ArtistFull
  alias HTTPoison.Response
  alias Spotify.API.APIHelpers

  @base_url "https://api.spotify.com/v1/artists"

  @doc """
    Get Spotify catalog information for a single artist identified by their unique Spotify ID.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/artists/get-artist/)
  """
  @spec get_artist(Credentials.t, Spotify.spotify_id, Keyword.t) :: {:ok, ArtistFull.t} | APIHelpers.error_response
  def get_artist(%Credentials{} = creds, id, params \\ []) do
    headers = Credentials.format_header(creds)

    with response <- HTTPoison.get("#{@base_url}/#{id}", headers, params: params),
         {:ok, body} <- APIHelpers.parse_response(response)
      do
        {:ok, Poison.decode(body, as: ArtistFull.as())}
    end
  end

  @doc """
    Get Spotify catalog information about an artist’s albums.

    Optional parameters can be specified in the query string to filter and sort the response.

    | Query Parameter | Status | Value |
    | :-------------- | :----- | :---- |
    | album_type | **Optional** | A comma-separated list of keywords that will be used to filter the response. If not supplied, all album types will be returned. Valid values are: `album`, `single`, `appears_on`, `compilation`. For example: `album_type=album,single.` |
    | market (synonym: country) |	**Optional** | An ISO 3166-1 alpha-2 country code. Supply this parameter to limit the response to one particular geographical market. For example, for albums available in Sweden: `market=SE`. If not given, results will be returned for all markets and you are likely to get duplicate results per album, one for each market in which the album is available! |
    | limit	| **Optional** | The number of album objects to return. Default: `20`. Minimum: `1`. Maximum: `50`. For example: `limit=2` |
    | offset	| **Optional** | The index of the first album to return. Default: `0` (i.e., the first album). Use with limit to get the next set of albums. |

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/artists/get-artists-albums/)
  """
  @spec get_artist_albums(Credentials.t, [Spotify.spotify_id], Keyword.t) :: {:ok, Paging.t(AlbumSimple.t)} | APIHelpers.error_response
  def get_artist_albums(%Credentials{} = creds, ids, params \\ []) do
    headers = Credentials.format_header(creds)
    params = Keyword.merge(params, ids: Enum.join(ids, ","))

    with response <- HTTPoison.get("#{@base_url}/#{id}/albums", headers, params: params),
         {:ok, body} <- APIHelpers.parse_response(response)
      do
        {:ok, Poison.decode(body, as: Paging.with(AlbumSimple.as()))}
    end
  end

  @doc """
    Get Spotify catalog information about an artist’s top tracks by country.

    | Query Parameter | Status | Value |
    | :-------------- | :----- | :---- |
    | country | **Required** | The country: an ISO 3166-1 alpha-2 country code. |

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/artists/get-artists-top-tracks/)
  """
  @spec get_artist_top_tracks(Credentials.t, Spotify.spotify_id, map) :: {:ok, [TrackFull.t]} | APIHelpers.error_response
  def get_artist_top_tracks(%Credentials{} = creds, id, params) do
    headers = Credentials.format_header(creds)

    with response <- HTTPoison.get("#{@base_url}/#{id}/top-tracks", headers, params: params),
         {:ok, body} <- APIHelpers.parse_response(response)
      do
        {:ok, Poison.decode(body, as: %{"tracks" => [TrackFull.as()]})}
    end
  end

  @doc """
    Get Spotify catalog information about artists similar to a given artist.

    Similarity is based on analysis of the Spotify community’s listening history.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/artists/get-related-artists/)
  """
  @spec get_artist_related_artists(Credentials.t, Spotify.spotify_id, map) :: {:ok, [ArtistFull.t]} | APIHelpers.error_response
  def get_artist_related_artists(%Credentials{} = creds, id, params) do
    headers = Credentials.format_header(creds)

    with response <- HTTPoison.get("#{@base_url}/#{id}/related-artists", headers, params: params),
         {:ok, body} <- APIHelpers.parse_response(response)
      do
        {:ok, Poison.decode(body, as: %{"artists" => [ArtistFull.as()]})}
    end
  end

  @doc """
    Get Spotify catalog information for several artists based on their Spotify IDs.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/artists/get-several-artists/)
  """
  @spec get_artists(Credentials.t, [Spotify.spotify_id], Keyword.t) :: {:ok, [ArtistFull.t | nil]} | APIHelpers.error_response
  def get_artists(%Credentials{} = creds, ids, params \\ []) do
    headers = Credentials.format_header(creds)
    params = Keyword.merge(params, ids: Enum.join(ids, ","))

    with response <- HTTPoison.get(@base_url, headers, params: params),
         {:ok, body} <- APIHelpers.parse_response(response)
      do
      {:ok, Poison.decode(body, as: %{"artists" => [AlbumFull.as()]})}
    end
  end
end
