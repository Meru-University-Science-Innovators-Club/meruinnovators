import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:meruinnovators/common/data/models/auth.dart';

class Meruinovatorsadapters extends TypeAdapter<InnovatorUser> {
  @override
  InnovatorUser read(BinaryReader reader) {
    return InnovatorUser.fromJson(
      Map<String, dynamic>.of(
        json.decode(reader.read() as String) as Map<String, dynamic>,
      ),
    );
  }

  @override
  int get typeId => 0;

  @override
  void write(BinaryWriter writer, InnovatorUser obj) {
    writer.write(json.encode(obj.toJson()));
  }
}
