@JS()
library c3_dart.impl;

import 'c3_generated.dart' as c3;
import 'package:js/js.dart';

@anonymous
@JS()
class ChartConfiguration extends c3.ChartConfiguration {
  /// Set a callback to execute when the chart is initialized.
  external Function get oninit;
  external set oninit(Function v);

  /// Set a callback which is executed when the chart is rendered. Basically, this callback will be called in each time when the chart is redrawed.
  external Function get onrendered;
  external set onrendered(Function v);

  /// Set a callback to execute when mouse enters the chart.
  external Function get onmouseover;
  external set onmouseover(Function v);

  /// Set a callback to execute when mouse leaves the chart.
  external Function get onmouseout;
  external set onmouseout(Function v);

  /// Set a callback to execute when user resizes the screen.
  external Function get onresize;
  external set onresize(Function v);

  /// Set a callback to execute when screen resize finished.
  external Function get onresized;
  external set onresized(Function v);
}

@anonymous
@JS()
class Data extends c3.Data {}

@anonymous
@JS()
class TooltipOptions extends c3.TooltipOptions {}

@anonymous
@JS()
class SubchartOptions extends c3.SubchartOptions {}

@anonymous
@JS()
class ZoomOptions extends c3.ZoomOptions {}

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
