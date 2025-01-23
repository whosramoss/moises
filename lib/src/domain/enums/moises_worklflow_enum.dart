/// # Moises Template workflows
/// The following workflows are available to all platform users.
/// Public workflows are under the `moises` namespace.
///
/// Check for more info : [docs/template-workflows](https://music.ai/workflows/)
enum MoisesWorkflowEnum {
  /// ## Stems Vocals Accompaniment
  ///
  /// Stems separation for vocals and accompaniment
  stemsVocalsAccompaniment(
    'moises/stems-vocals-accompaniment',
  ),

  /// ## Stems Vocals Drums Bass Guitar Other
  ///
  /// Stems separation for vocals, drums, bass, guitars and other
  stemsVocalsDrumsBassGuitarOther(
    'moises/stems-vocals-drums-bass-guitar-other',
  ),

  /// ## Stems Vocals Drums Bass Other
  ///
  /// Stems separation for vocals, drums, bass and other
  stemsVocalsDrumsBassOther(
    'moises/stems-vocals-drums-bass-other',
  ),

  /// ## Stems Vocals Drums Piano Other
  ///
  /// Stems separation for vocals, drums, piano and other
  stemsVocalsDrumsPianoOther(
    'moises/stems-vocals-drums-bass-piano-other',
  ),

  /// ## Stems Vocals Drums Strings Other
  ///
  /// Stems separation for vocals, drums, strings and other
  stemsVocalsDrumsStringsOther(
    'moises/stems-vocals-drums-bass-strings-other',
  ),

  /// ## Transcription Beat Chords
  ///
  /// Detect beats and chords for a song
  transcriptionBeatChords(
    'moises/transcription-beat-chords',
  ),

  /// ## Transcription Beats
  ///
  /// Detect beats for a song
  transcriptionBeats(
    'moises/transcription-beats',
  ),

  /// ## Transcription Chords
  ///
  /// Detect chords for a song
  transcriptionChords(
    'moises/transcription-chords',
  ),

  /// ## Transcription Speech Singing
  ///
  /// Transcribe Speech or Lyrics
  transcriptionSpeechSinging(
    'moises/transcription-speech-singing',
  );

  /// id From Workflow
  final String id;

  /// The instance of the `MoisesWorkflowEnum` class.
  const MoisesWorkflowEnum(this.id);
}
