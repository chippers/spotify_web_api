defmodule Spotify do
  @moduledoc """
  Documentation for accessing Spotify Web API.
  """

  @client_id Application.get_env(:spotify_web_api, :client_id)
  @secret_key Application.get_env(:spotify_web_api, :secret_key)
  @callback_url Application.get_env(:spotify_web_api, :callback_url) |> URI.encode_www_form()

  @doc "Returns the client_id"
  def client_id, do: @client_id

  @doc "Returns the secret_key"
  def secret_key, do: @secret_key

  @doc "Returns the callback_url"
  def callback_url, do: @callback_url

  @doc """
  Hello world.

  ## Examples

      iex> Spotify.hello
      :world

  """
  def hello do
    :world
  end
end
