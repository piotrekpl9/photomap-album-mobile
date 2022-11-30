import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:photomapalbummobile/feature/album/model/album.dart';
import 'package:photomapalbummobile/feature/album/repository/album_repository_abstraction.dart';
part 'album_event.dart';
part 'album_state.dart';

class AlbumBloc extends Bloc<AlbumEvent, AlbumState> {
  final AlbumRepositoryAbstraction _albumRepository;

  AlbumBloc(this._albumRepository) : super(AlbumLoading()) {
    on<FetchDataEvent>(_fetchAlbumData);
  }

  void _fetchAlbumData(AlbumEvent event, Emitter<AlbumState> emitter) async {
    var x = await _albumRepository.fetchAlbums();
    emitter(AlbumLoaded(albumsList: x));
  }
}
