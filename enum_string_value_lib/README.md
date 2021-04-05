Annotations for `enum_string_value`.

## Usage

(See [whole example project](https://github.com/kikuchy/enum_string_value/tree/master/example))

Put `build.yaml` on the root of your project.

```yaml
targets:
  $default:
    builders:
      enum_string_value_generator|enum_string_value:
        generate_for:
          - lib/**/*.dart
```

Add packages to your `pubspec.yaml`.

```yaml
dependencies:
  enum_string_value_lib: ^2.0.0

dev_dependencies:
  build_runner: ^1.12.2
  enum_string_value_generator: ^2.0.0
```

Add `@Value` annotation to your enum values and `part` directive for the generated file.

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

Run `build_runner` on your project.

for pure Dart project:
```
$ pub run build_runner build
```

for Flutter project
```
$ flutter packages pub run build_runner build
```
