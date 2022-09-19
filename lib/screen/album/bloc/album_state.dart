part of 'album_bloc.dart';

@immutable
abstract class AlbumState {
  const AlbumState();
}

class AlbumInitial extends AlbumState {}

class AlbumLoading extends AlbumState {}

class AlbumLoaded extends AlbumState {
  final List<Album> albumsList;
  const AlbumLoaded({required this.albumsList});
}

class AlbumLoadingError extends AlbumState {
  final String errorMessage;
  const AlbumLoadingError({required this.errorMessage});
}
