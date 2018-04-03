@JS()
library c3_dart.impl;

import 'package:js/js.dart';

@anonymous
@JS()
class ChartSize {
  external num get width;
  external set width(num v);

  external num get height;
  external set height(num v);

  external factory ChartSize({num width, num height});
}

@anonymous
@JS()
class Padding {
  external num get top;
  external set top(num v);

  external num get right;
  external set right(num v);

  external num get bottom;
  external set bottom(num v);

  external num get left;
  external set left(num v);

  external factory Padding({num top, num right, num bottom, num left});
}

@anonymous
@JS()
class ChartColor {
  external List<String> get pattern;
  external set pattern(List<String> v);

  external dynamic get threshold;
  external set threshold(dynamic v);

  external factory ChartColor({List<String> patternm, threshold});
}

@anonymous
@JS()
class ChartInteraction {
  external bool get enabled;
  external set enabled(bool v);

  external factory ChartInteraction({bool enabled});
}

@anonymous
@JS()
class ChartResize {
  external bool get auto;
  external set auto(bool v);

  external factory ChartResize({bool auto});
}

@anonymous
@JS()
class ChartTransition {
  external num get duration;
  external set duration(num v);

  external factory ChartTransition({num duration});
}
