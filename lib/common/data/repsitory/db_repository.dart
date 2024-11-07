// import 'package:injectable/injectable.dart';
// // import 'package:isar/isar.dart';
// import 'package:meruinnovators/common/data/models/local/local_user.dart';
// import 'package:path_provider/path_provider.dart' as path;
//
// @singleton
// class DBRepository {
//   Future<Isar> init() async {
//     final dir = await path.getApplicationDocumentsDirectory();
//     return Isar.open(
//       [
//         LocalUserSchema,
//       ],
//       directory: dir.path,
//     );
//   }
// }
