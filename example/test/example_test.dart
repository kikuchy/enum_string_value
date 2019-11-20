import 'package:example/example.dart';
import 'package:test/test.dart';

void main() {
  test("JapanesePrefecture.tokyo is 「東京」", () {
    expect(JapanesePrefecture.tokyo.value, "東京");
  });
}
