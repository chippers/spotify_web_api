defmodule Spotify.Models.AudioFeatures do
  @moduledoc """
    A complete audio features object.

    [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#audio-features-object)
  """

  @behaviour Spotify.Models.ObjectModel

  @typedoc """
    A float measurement of Acousticness.

    A confidence measure from 0.0 to 1.0 of whether the track is acoustic.
    1.0 represents high confidence the track is acoustic.
  """
  @type acousticness :: float

  @typedoc """
    An HTTP URL to access the full audio analysis of this track.

    An access token is required to access this data.
  """
  @type analysis_url :: String.t

  @typedoc """
    How danceable a track is.

    Danceability describes how suitable a track is for dancing based on a
    combination of musical elements including tempo, rhythm stability, beat
    strength, and overall regularity. A value of 0.0 is least danceable and
    1.0 is most danceable.
  """
  @type danceability :: float

  @typedoc """
    The duration of the track in milliseconds.
  """
  @type duration_ms :: integer

  @typedoc """
    Measurement of intensity and activity.

    Energy is a measure from 0.0 to 1.0 and represents a perceptual measure of
    intensity and activity. Typically, energetic tracks feel fast, loud, and noisy.
    For example, death metal has high energy, while a Bach prelude scores low on the scale.
    Perceptual features contributing to this attribute include dynamic range,
    perceived loudness, timbre, onset rate, and general entropy.
  """
  @type energy :: float

  @typedoc """
    The Spotify ID for the track.
  """
  @type id :: String.t

  @typedoc """
    Measurement of the likelihood the track is instrumental.

    Predicts whether a track contains no vocals. “Ooh” and “aah” sounds are treated as
    instrumental in this context. Rap or spoken word tracks are clearly “vocal”.
    The closer the instrumentalness value is to 1.0, the greater likelihood the track
    contains no vocal content. Values above 0.5 are intended to represent instrumental
    tracks, but confidence is higher as the value approaches 1.0.
  """
  @type instrumentalness :: float

  @typedoc """
    The key the track is in.

    Integers map to pitches using standard Pitch
    Class notation. E.g. 0 = C, 1 = C♯/D♭, 2 = D, and so on.
  """
  @type key :: integer

  @typedoc """
    Mesurement of the likelihood the track is live.

    Detects the presence of an audience in the recording. Higher liveness values
    represent an increased probability that the track was performed live. A value
    above 0.8 provides strong likelihood that the track is live.
  """
  @type liveness :: float

  @typedoc """
    Relative Loudness of a track compared to other Spotify tracks.

    The overall loudness of a track in decibels (dB). Loudness values are averaged
    across the entire track and are useful for comparing relative loudness of tracks.
    Loudness is the quality of a sound that is the primary psychological correlate of
    physical strength (amplitude). Values typical range between -60 and 0 db.
  """
  @type loudness :: float

  @typedoc """
    The modality of the track.

    Mode indicates the modality (major or minor) of a track, the type of scale from
    which its melodic content is derived. Major is represented by 1 and minor is 0.
  """
  @type mode :: integer

  @typedoc """
    The detected precence of speech in a track.

    Speechiness detects the presence of spoken words in a track. The more exclusively
    speech-like the recording (e.g. talk show, audio book, poetry), the closer to 1.0
    the attribute value. Values above 0.66 describe tracks that are probably made entirely
    of spoken words. Values between 0.33 and 0.66 describe tracks that may contain both
    music and speech, either in sections or layered, including such cases as rap music.
    Values below 0.33 most likely represent music and other non-speech-like tracks.
  """
  @type speechiness :: float

  @typedoc """
    The overall estimated tempo of a track in beats per minute (BPM).

    In musical terminology, tempo is the speed or pace of a given
    piece and derives directly from the average beat duration.
  """
  @type tempo :: float

  @typedoc """
    An estimated overall time signature of a track.

    The time signature (meter) is a notational convention to specify how many beats are in each bar (or measure).
  """
  @type time_signature :: integer

  @typedoc """
    A link to the Web API endpoint providing full details of the track.
  """
  @type track_href :: String.t

  @typedoc """
    The object type: `audio_features`
  """
  @type type :: String.t

  @typedoc """
    The Spotify URI for the track.
  """
  @type uri :: String.t

  @typedoc """
    The positiveness of a track.

    A measure from 0.0 to 1.0 describing the musical positiveness conveyed by a track.
    Tracks with high valence sound more positive (e.g. happy, cheerful, euphoric),
    while tracks with low valence sound more negative (e.g. sad, depressed, angry).
  """
  @type valence :: float

  defstruct [
    :acousticness,
    :analysis_url,
    :danceability,
    :duration_ms,
    :energy,
    :id,
    :instrumentalness,
    :key,
    :liveness,
    :loudness,
    :mode,
    :speechiness,
    :tempo,
    :time_signature,
    :track_href,
    :type,
    :uri,
    :valence,
  ]

  @typedoc """
  The full Audio Features object.

  Contains all the values listed in the
  [Spotify Docs](https://beta.developer.spotify.com/documentation/web-api/reference/object-model/#audio-features-object)
  """
  @type t :: %__MODULE__{
               acousticness: __MODULE__.acousticness,
               analysis_url: __MODULE__.analysis_url,
               danceability: __MODULE__.danceability,
               duration_ms: __MODULE__.duration_ms,
               energy: __MODULE__.energy,
               id: __MODULE__.id,
               instrumentalness: __MODULE__.instrumentalness,
               key: __MODULE__.key,
               liveness: __MODULE__.liveness,
               loudness: __MODULE__.loudness,
               mode: __MODULE__.mode,
               speechiness: __MODULE__.speechiness,
               tempo: __MODULE__.tempo,
               time_signature: __MODULE__.time_signature,
               track_href: __MODULE__.track_href,
               type: __MODULE__.type,
               uri: __MODULE__.uri,
               valence: __MODULE__.valence,
             }

  def as do
    %__MODULE__{}
  end
end
