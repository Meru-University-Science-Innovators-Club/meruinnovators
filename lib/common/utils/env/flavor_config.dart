class MeruInnovatorsValues {
  MeruInnovatorsValues({
    required this.urlScheme,
    required this.baseDomain,
    required this.hiveBox,
  });

  final String urlScheme;
  final String baseDomain;
  final String hiveBox;

  String get baseUrl => '$urlScheme://$baseDomain';
}

class MeruInnovatorsConfig {
  factory MeruInnovatorsConfig({required MeruInnovatorsValues values}) {
    return _instance ??= MeruInnovatorsConfig._internal(values);
  }

  MeruInnovatorsConfig._internal(this.values);

  final MeruInnovatorsValues values;
  static MeruInnovatorsConfig? _instance;

  static MeruInnovatorsConfig? get instance => _instance;
}
