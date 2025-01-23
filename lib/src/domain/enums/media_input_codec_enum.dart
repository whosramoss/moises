/// ## Supported Media Formats (Input Codec's)
/// Check for more info : [docs/media-formats](https://music.ai/docs/api/file-formats/)
enum MediaInputCodecEnum {
  /// # Codec AAC
  /// - **Description** : `Advanced Audio Coding`
  /// - **Extensions** : `.M4A, `.MP4`, `.3GP`, `.M4B`, `.AAC`
  aac,

  /// # Codec HE-AAC
  /// - **Description** : `High-Efficiency AAC V1, V2, LC`
  /// - **Extensions** : `.M4A, `.MP4`, `.3GP`, `.M4B`, `.M4P` , `.M4R` , `.M4V` , `.AAC`
  heaac,

  /// # Codec AIFF IFF
  /// - **Description** : `Audio Interchange File Format`
  /// - **Extensions** : `.AIF, `.AIFF`, `.AIFC`
  aiffiff,

  /// # Codec AVI
  /// - **Description** : `Audio Video Interleave`
  /// - **Extensions** : `.AVI
  avi,

  /// # Codec MOV
  /// - **Description** : `QuickTime File Format`
  /// - **Extensions** : `.MOV, `.QT`
  mov,

  /// # Codec MP3
  /// - **Description** : `MPEG-1, MPEG-2 Audio Layer 3`
  /// - **Extensions** : `.MP3`
  mp3,

  /// # Codec MP4
  /// - **Description** : `MPEG-4`
  /// - **Extensions** : `.MP4`,`.M4A`,`.M4P`,`.M4B`,`.M4R`,`.M4V`,
  mp4,

  /// # Codec OPUS
  /// - **Extensions** : `.OPUS`
  opus,

  /// # Codec VORBIS
  /// - **Extensions** : `.OGG`
  vorbis,

  /// # Codec WAV
  /// - **Description** : `Waveform Audio File Format`
  /// - **Extensions** : `.WAV`
  wav;
}
