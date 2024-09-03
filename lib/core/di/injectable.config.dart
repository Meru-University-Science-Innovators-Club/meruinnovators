// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:meruinnovators/common/data/repsitory/auth_repository.dart'
    as _i3;
import 'package:meruinnovators/common/data/repsitory/db_repository.dart' as _i4;
import 'package:meruinnovators/common/data/repsitory/hive_repository.dart'
    as _i5;
import 'package:meruinnovators/common/utils/router.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt initGetIt({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.AuthRepository>(() => _i3.AuthRepository());
    gh.singleton<_i4.DBRepository>(() => _i4.DBRepository());
    gh.singleton<_i5.HiveRepository>(() => _i5.HiveRepository());
    gh.singleton<_i6.MUSTRouter>(() => _i6.MUSTRouter());
    return this;
  }
}
