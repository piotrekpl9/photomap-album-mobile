import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../repository/album_repository.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final AlbumRepository _albumRepository;
  HomeBloc(this._albumRepository) : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
