defmodule Spotify.API.APIHelpers do
  @moduledoc """
    Helpers for the Spotify API functions.
  """

  alias HTTPoison.{Response, Error}

  @type error_responses :: {:error, :fetch_error, Error.t} |
        {:error, :rate_limited, integer} |
        {:error, :invalid_token, HTTPoison.Base.headers}

  @spec parse_response({:ok | :error, Response.t | Error.t})
        :: {:ok, String.t} | error_responses
  def parse_response({:error, %Error{} = error}) do
    {:error, :fetch_error, error}
  end
  def parse_response({:ok, %Response{status_code: 429, headers: headers}}) do
    retry_after =
      headers
      |> List.keyfind("Retry-After")
      |> String.to_integer()

    {:error, :rate_limited, retry_after}
  end
  def parse_response({:ok, %Response{status_code: 401, headers: headers}}) do
    {:error, :invalid_token, headers}
  end
  def parse_response({:ok, %Response{status_code: 200, body: body}}) do
    {:ok, body}
  end
end
