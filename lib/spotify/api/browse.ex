defmodule Spotify.API.Browse do
  @moduledoc "browse api"
  alias Spotify.Credentials
  alias Spotify.Category
  alias Spotify.Pagings.Paging
  alias Spotify.Tracks.TrackFull
  alias Spotify.Playlists.PlaylistSimple
  alias Spotify.Albums.AlbumSimple
  alias Spotify.Recommendations
  alias Spotify.API.APIHelpers

  @base_url "https://api.spotify.com/v1"

  @doc """
    Get a single category used to tag items in Spotify (on, for example, the Spotify player’s “Browse” tab).

    | Query Parameter | Status | Value |
    | :-------------- | :----- | :---- |
    | country	| **Optional** | A country: an ISO 3166-1 alpha-2 country code. Provide this parameter to ensure that the category exists for a particular country. |
    | locale	| **Optional** | The desired language, consisting of an ISO 639-1 language code and an ISO 3166-1 alpha-2 country code, joined by an underscore. For example: `es_MX`, meaning "Spanish (Mexico)". Provide this parameter if you want the category strings returned in a particular language. Note that, if `locale` is not supplied, or if the specified language is not available, the category strings returned will be in the Spotify default language (American English). |

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/browse/get-category/)
  """
  @spec get_browse_category(Credentials.t, Spotify.spotify_id, Keyword.t) :: {:ok, Category.t} | APIHelpers.error_response
  def get_browse_category(%Credentials{} = creds, category_id, params \\ []) do
    headers = Credentials.format_header(creds)

    with response <- HTTPoison.get("#{@base_url}/browse/categories/#{category_id}", headers, params: params),
         {:ok, body} <- APIHelpers.parse_response(response)
      do
      {:ok, Poison.decode(body, as: Category.as())}
    end
  end

  @doc """
    Get a list of Spotify playlists tagged with a particular category.

    | Query Parameter | Status | Value |
    | :-------------- | :----- | :---- |
    | country	| **Optional** | A country: an ISO 3166-1 alpha-2 country code. |
    | limit	| **Optional** | The maximum number of items to return. Default: `20`. Minimum: `1`. Maximum: `50`. |
    | offset	| **Optional** | The index of the first item to return. Default: `0` (the first object). Use with limit to get the next set of items. |

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/browse/get-categorys-playlists/)
  """
  @spec get_browse_category_playlists(Credentials.t, [Spotify.spotify_id], Keyword.t) :: {:ok, Paging.t(PlaylistSimple.t)} | APIHelpers.error_response
  def get_browse_category_playlists(%Credentials{} = creds, category_id, params \\ []) do
    headers = Credentials.format_header(creds)

    with response <- HTTPoison.get("#{@base_url}/browse/categories/#{category_id}/playlists", headers, params: params),
         {:ok, body} <- APIHelpers.parse_response(response)
      do
      {:ok, Poison.decode(body, as: Paging.wrap(PlaylistSimple.as()))}
    end
  end

  @doc """
    Get a list of categories used to tag items in Spotify (on, for example, the Spotify player’s “Browse” tab).

    | Query Parameter | Status | Value |
    | :-------------- | :----- | :---- |
    | country	| **Optional** | A country: an ISO 3166-1 alpha-2 country code. Provide this parameter if you want to narrow the list of returned categories to those relevant to a particular country. If omitted, the returned items will be globally relevant. |
    | locale	| **Optional** | The desired language, consisting of an ISO 639-1 language code and an ISO 3166-1 alpha-2 country code, joined by an underscore. For example: `es_MX`, meaning “Spanish (Mexico)”. Provide this parameter if you want the category metadata returned in a particular language. Note that, if `locale` is not supplied, or if the specified language is not available, all strings will be returned in the Spotify default language (American English). The `locale` parameter, combined with the country parameter, may give odd results if not carefully matched. For example `country=SE&locale=de_DE` will return a list of categories relevant to Sweden but as German language strings. |
    | limit	| **Optional** | The maximum number of categories to return. Default: `20`. Minimum: `1`. Maximum: `50`. |
    | offset	| **Optional** | The index of the first item to return. Default: `0` (the first object). Use with limit to get the next set of categories. |

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/browse/get-list-categories/)
  """
  @spec get_browse_categories(Credentials.t, map) :: {:ok, Paging.t(Category.t)} | APIHelpers.error_response
  def get_browse_categories(%Credentials{} = creds, params \\ []) do
    headers = Credentials.format_header(creds)

    with response <- HTTPoison.get("#{@base_url}/browse/categories", headers, params: params),
         {:ok, body} <- APIHelpers.parse_response(response)
      do
        decoded = Poison.decode(body, as: %{"categories" => Paging.wrap(Category.as())})
        {:ok, Map.get(decoded, "categories")}
    end
  end

  @doc """
    Get a list of Spotify featured playlists (shown, for example, on a Spotify player’s ‘Browse’ tab).

    | Query Parameter | Status | Value |
    | :-------------- | :----- | :---- |
    | locale	| **Optional** | The desired language, consisting of a lowercase ISO 639-1 language code and an uppercase ISO 3166-1 alpha-2 country code, joined by an underscore. For example: es_MX, meaning “Spanish (Mexico)”. Provide this parameter if you want the results returned in a particular language (where available). Note that, if locale is not supplied, or if the specified language is not available, all strings will be returned in the Spotify default language (American English). The locale parameter, combined with the country parameter, may give odd results if not carefully matched. For example country=SE&locale=de_DE will return a list of categories relevant to Sweden but as German language strings. |
    | country	| **Optional** | A country: an ISO 3166-1 alpha-2 country code. Provide this parameter if you want the list of returned items to be relevant to a particular country. If omitted, the returned items will be relevant to all countries. |
    | timestamp	| **Optional** | A timestamp in ISO 8601 format: `yyyy-MM-ddTHH:mm:ss`. Use this parameter to specify the user’s local time to get results tailored for that specific date and time in the day. If not provided, the response defaults to the current UTC time. Example: “2014-10-23T09:00:00” for a user whose local time is 9AM. |
    | limit	| **Optional** | The maximum number of items to return. Default: `20`. Minimum: `1`. Maximum: `50`. |
    | offset	| **Optional** | The index of the first item to return. Default: `0` (the first object). Use with limit to get the next set of items. |

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/browse/get-list-featured-playlists/)
  """
  @spec get_browse_featured_playlists(Credentials.t, map) :: {:ok, %{message: String.t, playlists: Paging.t(PlaylistSimple.t)}} | APIHelpers.error_response
  def get_browse_featured_playlists(%Credentials{} = creds, params) do
    headers = Credentials.format_header(creds)

    with response <- HTTPoison.get("#{@base_url}/browse/featured-playlists", headers, params: params),
         {:ok, body} <- APIHelpers.parse_response(response)
      do
        decoded = Poison.decode(body, as: %{"playlists" => Paging.wrap(PlaylistSimple.as())})
      {:ok, %{message: Map.get(decoded, "message"), playlists: Map.get(decoded, "playlists")}}
    end
  end

  @doc """
    Get a list of new album releases featured in Spotify (shown, for example, on a Spotify player’s “Browse” tab).

    | Query Parameter | Status | Value |
    | :-------------- | :----- | :---- |
    | country	|**Optional** | A country: an ISO 3166-1 alpha-2 country code. Provide this parameter if you want the list of returned items to be relevant to a particular country. If omitted, the returned items will be relevant to all countries. |
    | limit	|**Optional** | The maximum number of items to return. Default: `20`. Minimum: `1`. Maximum: `50`. |
    | offset	|**Optional** | The index of the first item to return. Default: `0` (the first object). Use with limit to get the next set of items. |

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/browse/get-list-new-releases/)
  """
  @spec get_artists(Credentials.t, Keyword.t) :: {:ok, %{message: String.t, albums: Paging.t(AlbumSimple.t)}} | APIHelpers.error_response
  def get_artists(%Credentials{} = creds, params \\ []) do
    headers = Credentials.format_header(creds)

    with response <- HTTPoison.get("#{@base_url}/browse/new-releases", headers, params: params),
         {:ok, body} <- APIHelpers.parse_response(response)
      do
        decoded = Poison.decode(body, as: %{"albums" => Paging.wrap(AlbumSimple.as())})
      {:ok, %{message: Map.get(decoded, "message"), albums: Map.get(decoded, "albums")}}
    end
  end

  @doc """
    Create a playlist-style listening experience based on seed artists, tracks and genres.

    Recommendations are generated based on the available information for a given seed entity and matched against
    similar artists and tracks. If there is sufficient information about the provided seeds, a list of tracks will
    be returned together with pool size details.

    For artists and tracks that are very new or obscure there might not be enough data to generate a list of tracks.

    Please see the [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/browse/get-recommendations/)
    for all details about query parameters as this is quite a complex endpoint.
  """
  @spec get_recommendations(Credentials.t, map) :: {:ok, Recommendations.t} | APIHelpers.error_response
  def get_recommendations(%Credentials{} = creds, params) do
    headers = Credentials.format_header(creds)

    with response <- HTTPoison.get("#{@base_url}/recommendations", headers, params: params),
         {:ok, body} <- APIHelpers.parse_response(response)
      do
      {:ok, Poison.decode(body, as: Recommendations.as())}
    end
  end
end
