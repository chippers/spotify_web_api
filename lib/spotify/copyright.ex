defmodule Spotify.Copyright do
  # https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#copyright-object
  @moduledoc """
    An object containing copyright statements.

    | Key   | Value Description |
    | :---- | :---------------- |
    | text  | The copyright text for this album. |
    | type  | The type of copyright: `C` = the copyright, `P` = the sound recording (performance) copyright. |
  """

  defstruct [
    :text,
    :type,
  ]

  @type t :: %Spotify.Copyright{
               text: String.t,
               type: String.t,
             }
end