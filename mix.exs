defmodule Spotify.Models.Mixfile do
  use Mix.Project

  def project do
    [
      app: :spotify_web_api,
      version: "0.2.2",
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
        licenses: ["MIT"],
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
      "Album Models": [
        Spotify.Models.Albums,
        Spotify.Models.Albums.AlbumFull,
        Spotify.Models.Albums.AlbumSimple,
        Spotify.Models.Albums.SavedAlbum,
      ],
      "Artist Models": [
        Spotify.Models.Artists,
        Spotify.Models.Artists.ArtistFull,
        Spotify.Models.Artists.ArtistSimple
      ],
      "Track Models": [
        Spotify.Models.Tracks,
        Spotify.Models.Tracks.TrackFull,
        Spotify.Models.Tracks.TrackSimple,
        Spotify.Models.Tracks.TrackLink,
        Spotify.Models.Tracks.SavedTrack
      ],

      "Paging Models": [
        Spotify.Models.Pagings,
        Spotify.Models.Pagings.Paging,
        Spotify.Models.Pagings.PagingCursor,
      ],
      "Playlist Models": [
        Spotify.Models.Playlists,
        Spotify.Models.Playlists.PlaylistSimple,
        Spotify.Models.Playlists.PlaylistTrack,
        Spotify.Models.Playlists.PlaylistFull,
      ],
      "Recommendations Models": [
        Spotify.Models.Recommendations,
        Spotify.Models.Recommendations.Recommendations,
        Spotify.Models.Recommendations.RecommendationsSeed,
      ],
      "User Models": [
        Spotify.Models.Users,
        Spotify.Models.Users.UserPrivate,
        Spotify.Models.Users.UserPublic,
        Spotify.Models.Users.PlayHistory
      ],
      "Miscellaneous Models": [
        Spotify.Models.ExternalIds,
        Spotify.Models.ExternalUrls,
        Spotify.Models.Copyright,
        Spotify.Models.Image,
        Spotify.Models.Followers,
        Spotify.Models.AudioFeatures,
        Spotify.Models.Category,
        Spotify.Models.Context,
        Spotify.Models.Cursor,
        Spotify.Models.Error,
        Spotify.Models.Restrictions,
        Spotify.Models.Timestamp,
      ]
    ]
  end
end
