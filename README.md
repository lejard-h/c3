A generated Dart API for [C3.js](http://c3js.org/)
using [pkg/js](https://pub.dartlang.org/packages/js) and
[dart_js_facade_gen](https://github.com/dart-lang/js_facade_gen).

## Example

```dart
import "package:c3/c3.dart" as c3;

main() async {
  await c3.load();

  final container = document.querySelector("#chart");

  final data = new c3.Data()
    ..columns = [
      ['data1', 30, 200, 100, 400, 150, 250],
      ['data2', 50, 20, 10, 40, 15, 25]
    ];

  final configuration = new c3.ChartConfiguration()
    ..bindto = container
    ..data = data;

  final chart = c3.generate(configuration);
}
```