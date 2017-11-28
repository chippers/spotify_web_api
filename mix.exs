defmodule Spotify.Mixfile do
  use Mix.Project

  def project do
    [
      app: :spotify_web_api,
      version: "0.2.1",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps(),
      description: "Library to help with accessing the Spotify Web API.",

      name: "Spotify Web API",
      docs: [
        groups_for_modules: groups_for_modules(),
        source_url: "https://github.com/chippers/spotify_web_api",
        homepage_url: "https://github.com/chippers/spotify_web_api",
      ],
      package: [
        licenses: ["mit"],
        maintainers: ["Chip Reed <chip@chip.sh>"],
        links: %{
          "Repository": "https://github.com/chippers/spotify_web_api",
          "Spotify Web API": "https://beta.developer.spotify.com/documentation/web-api/",
        }
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 0.13"},
      {:poison, "~> 3.1"},
      {:dialyxir, "~> 0.5", only: [:dev], runtime: false},
      {:credo, "~> 0.8", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.18", only: :dev, runtime: false}
    ]
  end

  defp groups_for_modules do
    [
      "Albums": [
        Spotify.Albums,
        Spotify.Albums.AlbumFull,
        Spotify.Albums.AlbumSimple,
        Spotify.Albums.SavedAlbum,
      ],
      "Artists": [
        Spotify.Artists,
        Spotify.Artists.ArtistFull,
        Spotify.Artists.ArtistSimple
      ],
      "Tracks": [
        Spotify.Tracks,
        Spotify.Tracks.TrackFull,
        Spotify.Tracks.TrackSimple,
        Spotify.Tracks.TrackLink,
        Spotify.Tracks.SavedTrack
      ],

      "Pagings": [
        Spotify.Pagings,
        Spotify.Pagings.Paging,
        Spotify.Pagings.PagingCursor,
      ],
      "Playlists": [
        Spotify.Playlists,
        Spotify.Playlists.PlaylistSimple,
        Spotify.Playlists.PlaylistTrack,
        Spotify.Playlists.PlaylistFull,
      ],
      "Recommendations": [
        Spotify.Recommendations,
        Spotify.Recommendations.Recommendations,
        Spotify.Recommendations.RecommendationsSeed,
      ],
      "Users": [
        Spotify.Users,
        Spotify.Users.UserPrivate,
        Spotify.Users.UserPublic,
        Spotify.Users.PlayHistory
      ],
      "Miscellaneous Objects": [
        Spotify.ExternalIds,
        Spotify.ExternalUrls,
        Spotify.Copyright,
        Spotify.Image,
        Spotify.Followers,
        Spotify.AudioFeatures,
        Spotify.Category,
        Spotify.Context,
        Spotify.Cursor,
        Spotify.Error,
        Spotify.Restrictions,
        Spotify.Timestamp,
      ]
    ]
  end
end
