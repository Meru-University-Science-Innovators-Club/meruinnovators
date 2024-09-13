import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';
import 'package:meruinnovators/common/data/models/failure.dart';
import 'package:meruinnovators/common/data/repsitory/auth_repository.dart';
import 'package:meruinnovators/features/auth/cubit/google_signin_state.dart';

class GoogleSignInCubit extends Cubit<GoogleSignInState> {
  GoogleSignInCubit({required AuthRepository authRepository})
      : super(const GoogleSignInState.initial()) {
    _authRepository = authRepository;
  }

  late AuthRepository _authRepository;

  Future<void> signInWithGoogle() async {
    emit(const GoogleSignInState.loading());
    try {
      final token = await _authRepository.signInWithGoogle();

      Logger().d('token $token');
      emit(GoogleSignInState.loaded(token: token));
    } on Failure catch (e) {
      Logger().d('error ${e.statusCode} =>   ${e.message} ');
      emit(GoogleSignInState.error(message: e.message));
    } catch (e) {
      Logger().d('error $e');
      emit(
        const GoogleSignInState.error(message: 'An unexpected error occured'),
      );
    }
  }
}
