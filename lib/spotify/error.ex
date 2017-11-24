defmodule Spotify.Error do
  # https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#error-object
  @moduledoc """
    An object containing error information.

    | Key   | Value Description |
    | :---- | :---------------- |
    | status	|	The HTTP status code (also returned in the response header; see Response Status Codes for more information). |
    | message	|	A short description of the cause of the error. |
  """

  defstruct [
    :status,
    :message,
  ]

  @type t :: %Spotify.Error{
               status: integer,
               message: String.t,
             }
end