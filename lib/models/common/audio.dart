class Audio {
  final String title;
  final String artist;
  final String albumCover;

  Audio({
    required this.title,
    required this.albumCover,
    required this.artist,
  });
  Audio copy({
    required String title,
    required String albumCover,
    required String artist,
  }) =>
      Audio(
        title: title,
        albumCover: albumCover,
        artist: artist
      );
}
