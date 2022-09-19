import '../model/album/album.dart';

abstract class AlbumRepositoryAbstraction {
  Future<List<Album>> fetchAlbums();
}
