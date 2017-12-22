defmodule Spotify.ObjectModel do
  @moduledoc """
    A behavior for implementing the `c:as/0` callback for Spotify object models
    that are returned from the web api.
  """

  @doc """
    Returns each Object Models' model for json decoding.

    This callback is passed into `Poison.decode` `:as` option for formatting
    incoming json as structs.  Each Object Model should implement it, and nest
    other Object Models' `as` functions in their own as needed.
  """
  @callback as() :: struct
end
