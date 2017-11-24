defmodule Spotify.Context do
  # https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#context-object
  @moduledoc """
    A Context object.

    | Key   | Value Description |
    | :---- | :---------------- |
    | type	| The object type, e.g. “artist”, “playlist”, “album”. |
    | href	| A link to the Web API endpoint providing full details of the track. |
    | external_urls	|	External URLs for this context. |
    | uri	| The Spotify URI for the context. |
  """

  defstruct [
    :type,
    :href,
    :external_urls,
    :uri,
  ]

  @type t :: %Spotify.Context{
               type: String.t,
               href: String.t,
               external_urls: Spotify.ExternalUrls.t,
               uri: String.t,
             }
end