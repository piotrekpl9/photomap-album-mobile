import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:photomapalbummobile/repository/profile_repository.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepository _profileRepository;
  ProfileBloc(this._profileRepository) : super(ProfileInitial()) {
    on<ProfileEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
