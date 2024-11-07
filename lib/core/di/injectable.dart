import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
// import 'package:isar/isar.dart';
import 'package:meruinnovators/core/di/injectable.config.dart';

final getIt = GetIt.instance;
// late Isar localDB;

@InjectableInit(
  initializerName: 'initGetIt',
  generateForDir: ['lib'],
)
Future<void> configureDependency() async {
  getIt.initGetIt();
  await getIt.allReady();
}

@module
abstract class RegisterModule {}
