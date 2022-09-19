import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:photomapalbummobile/model/album/album.dart';
import 'package:photomapalbummobile/repository/album_repository.dart';

part 'album_event.dart';
part 'album_state.dart';

class AlbumBloc extends Bloc<AlbumEvent, AlbumState> {
  final AlbumRepository _albumRepository;

  AlbumBloc(this._albumRepository) : super(AlbumLoading()) {
    on<FetchDataEvent>(_fetchAlbumData);
  }

  void _fetchAlbumData(AlbumEvent event, Emitter<AlbumState> emitter) async {
    var x = await _albumRepository.fetchAlbums();
    emitter(AlbumLoaded(albumsList: x));
  }
}
