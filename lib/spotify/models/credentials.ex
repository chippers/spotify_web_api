defmodule Spotify.Credentials do
  @moduledoc """
    Represents the return body from the Spotify authorization endpoint.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/general/guides/authorization-guide/#authorization-code-flow)
  """

  defstruct [
    :access_token,
    :token_type,
    :scope,
    :expires_in,
    :refresh_token,
  ]

  @typedoc "The Spotify authorization return body."
  @type t :: %__MODULE__{
               access_token: String.t,
               token_type: String.t,
               scope: String.t,
               expires_in: integer,
               refresh_token: String.t,
             }

  def as do
    %__MODULE__{}
  end

  @doc """
    Format credentials into a HTTP Header tuple for authorization use.
  """
  @spec format_header(t) :: {String.t, String.t}
  def format_header(%__MODULE__{} = creds) do
    [{"Authorization", "Bearer " <> creds.access_token}]
  end
end
