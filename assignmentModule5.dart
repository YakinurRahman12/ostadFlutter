//**************************************************************
// This is solution to the assignment assigned in Module 5.    *
// Submitted by: Yakinur Rahman                                *
//                                                             *
//**************************************************************

class Media {
  void play() {
    print("Playing media...");
  }
}

class Song extends Media {
  //* Though there are other ways, I am choosing to have the variable "artist" as 'late'
  late String artist;

  Song(this.artist);

  @override //* Overriding the method as it is already existing in the parent class.
  void play() {
    // super.play(); -this will print "Playing media..." message from Media class using play() method.
    print("Playing song by $artist...");
  }
}

void main() {
  Media media = Media();
  Song song = Song("Yakin");
  media.play();
  song.play();
}
