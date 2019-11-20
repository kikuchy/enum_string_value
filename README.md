# enum_string_value

Dart-lang extension generator for enum classes.

```dart
// os.dart
import 'package:enum_string_value_lib/enum_string_value_lib.dart';
part "os.value.g.dart";

enum OsKind {
  @Value("Android")
  android,
  @Value("iOS")
  ios,
}
```

👇 This tool generates below.

```dart
extension OsKindExtension on OsKind {
  String get value {
    switch (this) {
    case OsKind.android:
      return "Android";
    case OsKind.ios:
      return "iOS";
    default:
      return this.toString();
    }
  }
}
```