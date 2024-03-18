abstract class Playable {
  void play();
}

class Song implements Playable {
  final String title;
  final String artist;

  Song(this.title, this.artist);

  @override
  void play() {
    print("Playing song: $title by $artist");
  }
}

class Playlist extends Playable {
  final String title;
  final String artist;
  final List<Song> songs;

  Playlist(this.title, this.artist, this.songs);

  @override
  void play() {
    print("Playing playlist: $title by $artist");
    for (var song in songs) {
      song.play();
    }
  }
}

List<String> readFile(String filename) {
  return [
    "My Song, Great Artist",
    "Another Song, Awesome Band",
  ];
}

Song songFromSplit(String data) {
  final parts = data.split(",");
  return Song(parts[0].trim(), parts[1].trim());
}

void main() {
  final songData = readFile("songs.txt");
  final playlist = Playlist("My Favorite Tunes", "Me",
      songData.map((data) => songFromSplit(data)).toList());

  playlist.play();
}
