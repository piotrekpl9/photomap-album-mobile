import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../repository/auth_repository.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final AuthRepository _authRepository;
  RegisterBloc(this._authRepository) : super(RegisterInitial()) {
    on<RegisterEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
