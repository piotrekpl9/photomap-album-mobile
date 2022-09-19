part of 'album_bloc.dart';

@immutable
abstract class AlbumEvent {
  const AlbumEvent();
}

class FetchDataEvent extends AlbumEvent {
  const FetchDataEvent();
}
