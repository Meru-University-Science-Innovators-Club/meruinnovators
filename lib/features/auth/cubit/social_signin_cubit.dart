import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meruinnovators/common/data/repsitory/auth_repository.dart';
import 'package:meruinnovators/common/data/repsitory/hive_repository.dart';
import 'package:meruinnovators/features/auth/cubit/social_signin_state.dart';

class SocialSigninCubit extends Cubit<SocialSigninState> {
  SocialSigninCubit({
    required AuthRepository authRepository,
    required HiveRepository hiveRepository,
  }) : super(const SocialSigninState.initial()) {
    _authRepository = authRepository;
    _hiveRepository = hiveRepository;
  }

  late AuthRepository _authRepository;
  late HiveRepository _hiveRepository;

  Future<void> socialSignIn({
    required String token,
  }) async {
    emit(const SocialSigninState.loading());
    try {
      final authResult = await _authRepository.signIn(
        token: token,
      );
      _hiveRepository
        ..persistToken(authResult.data.accessToken)
        ..persistUser(authResult.data);

      emit(const SocialSigninState.loaded());
    } catch (e) {
      emit(SocialSigninState.error(message: e.toString()));
    }
  }
}
