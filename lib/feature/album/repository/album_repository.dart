import 'package:photomapalbummobile/feature/album/model/album.dart';
import 'package:photomapalbummobile/feature/album/repository/album_repository_abstraction.dart';

class AlbumRepository extends AlbumRepositoryAbstraction {
  @override
  Future<List<Album>> fetchAlbums() async {
    return <Album>[
      Album("1", "Test", "1", DateTime.now()),
      Album("2", "Test12", "1", DateTime.now()),
      Album("3", "Test23", "1", DateTime.now()),
      Album("4", "Test34", "1", DateTime.now()),
    ];
  }
}
