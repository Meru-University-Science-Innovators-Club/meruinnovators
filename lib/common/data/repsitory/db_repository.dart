import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart' as path;

@singleton
class DBRepository {
  Future<Isar> init() async {
    final dir = await path.getApplicationDocumentsDirectory();
    return Isar.open(
      [],
      directory: dir.path,
    );
  }
}
