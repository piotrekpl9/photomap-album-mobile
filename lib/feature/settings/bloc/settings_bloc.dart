import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:photomapalbummobile/feature/user/repository/user_repository_abstraction.dart';

part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final UserRepositoryAbstraction _profileRepository;
  SettingsBloc(this._profileRepository) : super(SettingsInitial()) {
    on<SettingsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
