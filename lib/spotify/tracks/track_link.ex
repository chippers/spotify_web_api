defmodule Spotify.Tracks.TrackLink do
  @moduledoc """
    A Track Link object.

    | Key   | Value Description |
    | :---- | :---------------- |
    | external_urls	| 	Known external URLs for this track. |
    | href	|	A link to the Web API endpoint providing full details of the track. |
    | id	|	The Spotify ID for the track. |
    | type	|	The object type: “track”. |
    | uri	|	The Spotify URI for the track.  |
  """

  defstruct [
    :external_urls,
    :href,
    :id,
    :type,
    :uri,
  ]

  @type t :: %Spotify.Tracks.TrackLink{
               external_urls: Spotify.ExternalUrls.t,
               href: String.t,
               id: String.t,
               type: String.t,
               uri: String.t,
             }
end
