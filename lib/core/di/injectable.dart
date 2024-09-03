import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

final getIt = GetIt.instance;
late Isar localDB;

@InjectableInit(
  initializerName: 'initGetIt',
  generateForDir: ['lib'],
)
Future<void> configureDependency() async {
  await getIt.allReady();
}

@module
abstract class RegisterModule {}
