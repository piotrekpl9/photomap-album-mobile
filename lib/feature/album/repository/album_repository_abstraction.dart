import 'package:photomapalbummobile/feature/album/model/album.dart';

abstract class AlbumRepositoryAbstraction {
  Future<List<Album>> fetchAlbums();
}
