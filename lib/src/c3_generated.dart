@JS("c3")
library c3;

import "package:js/js.dart";
import "dart:html" show HtmlElement, Event;
import "package:func/func.dart";

/// Type definitions for C3js 0.4
/// Project: http://c3js.org/
/// Definitions by: Marc Climent <https://github.com/mcliment>
/// Gerin Jacob <https://github.com/gerinjacob>
/// Bernd Hacker <https://github.com/denyo>
/// Dzmitry Shyndzin <https://github.com/dmitryshindin>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
/// TypeScript Version: 2.1
/*export type PrimitiveArray = Array<string | boolean | number | null>;*/
typedef void FormatFunction(dynamic v, String id, num i, num j);

@anonymous
@JS()
abstract class TargetIds {
  external dynamic /*List<String>|String*/ get ids;
  external set ids(dynamic /*List<String>|String*/ v);
  external factory TargetIds({dynamic /*List<String>|String*/ ids});
}

/*export type ArrayOrString = string[] | string;*/
@anonymous
@JS()
abstract class ChartConfiguration {
  /// The CSS selector or the element which the chart will be set to. D3 selection object can be specified. If other chart is set already, it will be replaced with the new one (only one chart
  /// can be set in one element).
  /// If this option is not specified, the chart will be generated but not be set. Instead, we can access the element by chart.element and set it by ourselves.
  /// Note: When chart is not binded, c3 starts observing if chart.element is binded by MutationObserver. In this case, polyfill is required in IE9 and IE10 becuase they do not support
  /// MutationObserver. On the other hand, if chart always will be binded, polyfill will not be required because MutationObserver will never be called.
  external dynamic /*String|HtmlElement|d3.Selection<dynamic>|Null*/ get bindto;
  external set bindto(
      dynamic /*String|HtmlElement|d3.Selection<dynamic>|Null*/ v);
  external dynamic
      /*{
        /**
         * The desired width of the chart element.
         * If this option is not specified, the width of the chart will be calculated by the size of the parent element it's appended to.
         * Note: This option should be specified if possible because it can improve its performance because some size calculations will be skipped by an explicit value.
         */
        width?: number;
        /**
         * The desired height of the chart element.
         * If this option is not specified, the height of the chart will be calculated by the size of the parent element it's appended to.
         */
        height?: number;
    }*/
      get size;
  external set size(
      dynamic
          /*{
        /**
         * The desired width of the chart element.
         * If this option is not specified, the width of the chart will be calculated by the size of the parent element it's appended to.
         * Note: This option should be specified if possible because it can improve its performance because some size calculations will be skipped by an explicit value.
         */
        width?: number;
        /**
         * The desired height of the chart element.
         * If this option is not specified, the height of the chart will be calculated by the size of the parent element it's appended to.
         */
        height?: number;
    }*/
          v);
  external dynamic
      /*{
        /**
         * The padding on the top of the chart.
         */
        top?: number;
        /**
         * The padding on the right of the chart.
         */
        right?: number;
        /**
         * The padding on the bottom of the chart.
         */
        bottom?: number;
        /**
         * The padding on the left of the chart.
         */
        left?: number;
    }*/
      get padding;
  external set padding(
      dynamic
          /*{
        /**
         * The padding on the top of the chart.
         */
        top?: number;
        /**
         * The padding on the right of the chart.
         */
        right?: number;
        /**
         * The padding on the bottom of the chart.
         */
        bottom?: number;
        /**
         * The padding on the left of the chart.
         */
        left?: number;
    }*/
          v);
  external dynamic
      /*{
        /**
         * Indicate if the chart should automatically get resized when the window gets resized.
         */
        auto?: boolean;
    }*/
      get resize;
  external set resize(
      dynamic
          /*{
        /**
         * Indicate if the chart should automatically get resized when the window gets resized.
         */
        auto?: boolean;
    }*/
          v);
  external dynamic
      /*{
        /**
         * Set custom color pattern.
         */
        pattern?: string[];
        threshold?: any; // Undocumented
    }*/
      get color;
  external set color(
      dynamic
          /*{
        /**
         * Set custom color pattern.
         */
        pattern?: string[];
        threshold?: any; // Undocumented
    }*/
          v);
  external dynamic
      /*{
        /**
         * Indicate if the chart should have interactions.
         * If false is set, all of interactions (showing/hiding tooltip, selection, mouse events, etc) will be disabled.
         */
        enabled?: boolean;
    }*/
      get interaction;
  external set interaction(
      dynamic
          /*{
        /**
         * Indicate if the chart should have interactions.
         * If false is set, all of interactions (showing/hiding tooltip, selection, mouse events, etc) will be disabled.
         */
        enabled?: boolean;
    }*/
          v);
  external dynamic
      /*{
        /**
         * Set duration of transition (in milliseconds) for chart animation.
         * Note: If 0 or null set, transition will be skipped. So, this makes initial rendering faster especially in case you have a lot of data.
         */
        duration?: number;
    }*/
      get transition;
  external set transition(
      dynamic
          /*{
        /**
         * Set duration of transition (in milliseconds) for chart animation.
         * Note: If 0 or null set, transition will be skipped. So, this makes initial rendering faster especially in case you have a lot of data.
         */
        duration?: number;
    }*/
          v);

  external Data get data;
  external set data(Data v);
  external Axis get axis;
  external set axis(Axis v);
  external Grid get grid;
  external set grid(Grid v);

  /// Show rectangles inside the chart.
  /// This option accepts array including object that has axis, start, end and class. The keys start, end and class are optional.
  /// axis must be x, y or y2. start and end should be the value where regions start and end. If not specified, the edge values will be used. If timeseries x axis, date string, Date object and
  /// unixtime integer can be used. If class is set, the region element will have it as class.
  external List<RegionOptions> get regions;
  external set regions(List<RegionOptions> v);
  external LegendOptions get legend;
  external set legend(LegendOptions v);
  external TooltipOptions get tooltip;
  external set tooltip(TooltipOptions v);
  external SubchartOptions get subchart;
  external set subchart(SubchartOptions v);
  external ZoomOptions get zoom;
  external set zoom(ZoomOptions v);
  external PointOptions get point;
  external set point(PointOptions v);
  external dynamic
      /*{
        /**
         * Set if null data point will be connected or not.
         * If true set, the region of null data will be connected without any data point. If false set, the region of null data will not be connected and get empty.
         */
        connectNull?: boolean;
        /**
         * Change step type for step chart. 'step', 'step-before' and 'step-after' can be used.
         */
        step?: {
            type: string;
        };
    }*/
      get line;
  external set line(
      dynamic
          /*{
        /**
         * Set if null data point will be connected or not.
         * If true set, the region of null data will be connected without any data point. If false set, the region of null data will not be connected and get empty.
         */
        connectNull?: boolean;
        /**
         * Change step type for step chart. 'step', 'step-before' and 'step-after' can be used.
         */
        step?: {
            type: string;
        };
    }*/
          v);
  external dynamic
      /*{
        /**
         * Set if min or max value will be 0 on area chart.
         */
        zerobased?: boolean;
    }*/
      get area;
  external set area(
      dynamic
          /*{
        /**
         * Set if min or max value will be 0 on area chart.
         */
        zerobased?: boolean;
    }*/
          v);
  external dynamic
      /*{
        /**
         * Change the width of bar chart. If ratio is specified, change the width of bar chart by ratio.
         */
        width?: number | {
            /**
             * Set the width of each bar by ratio
             */
            ratio: number,
            /**
             * Set max width of each bar
             */
            max?: number
        };
        /**
         * Set if min or max value will be 0 on bar chart.
         */
        zerobased?: boolean;
        /**
         * Set space between bars in bar charts
         */
        space?: number;
    }*/
      get bar;
  external set bar(
      dynamic
          /*{
        /**
         * Change the width of bar chart. If ratio is specified, change the width of bar chart by ratio.
         */
        width?: number | {
            /**
             * Set the width of each bar by ratio
             */
            ratio: number,
            /**
             * Set max width of each bar
             */
            max?: number
        };
        /**
         * Set if min or max value will be 0 on bar chart.
         */
        zerobased?: boolean;
        /**
         * Set space between bars in bar charts
         */
        space?: number;
    }*/
          v);
  external dynamic
      /*{
        label?: {
            /**
             * Show or hide label on each pie piece.
             */
            show?: boolean;
            /**
             * Set formatter for the label on each pie piece.
             */
            format?(value: number, ratio: number, id: string): string;
            /**
             * Set threshold to show/hide labels.
             */
            threshold?: number
        };
        /**
         * Enable or disable expanding pie pieces.
         */
        expand?: boolean;
    }*/
      get pie;
  external set pie(
      dynamic
          /*{
        label?: {
            /**
             * Show or hide label on each pie piece.
             */
            show?: boolean;
            /**
             * Set formatter for the label on each pie piece.
             */
            format?(value: number, ratio: number, id: string): string;
            /**
             * Set threshold to show/hide labels.
             */
            threshold?: number
        };
        /**
         * Enable or disable expanding pie pieces.
         */
        expand?: boolean;
    }*/
          v);
  external dynamic
      /*{
        label?: {
            /**
             * Show or hide label on each donut piece.
             */
            show?: boolean;
            /**
             * Set formatter for the label on each donut piece.
             */
            format?(value: number, ratio: number, id: string): string;
            /**
             * Set threshold to show/hide labels.
             */
            threshold?: number
        };
        /**
         * Enable or disable expanding pie pieces.
         */
        expand?: boolean;
        /**
         * Set width of donut chart.
         */
        width?: number;
        /**
         * Set title of donut chart.
         */
        title?: string;
    }*/
      get donut;
  external set donut(
      dynamic
          /*{
        label?: {
            /**
             * Show or hide label on each donut piece.
             */
            show?: boolean;
            /**
             * Set formatter for the label on each donut piece.
             */
            format?(value: number, ratio: number, id: string): string;
            /**
             * Set threshold to show/hide labels.
             */
            threshold?: number
        };
        /**
         * Enable or disable expanding pie pieces.
         */
        expand?: boolean;
        /**
         * Set width of donut chart.
         */
        width?: number;
        /**
         * Set title of donut chart.
         */
        title?: string;
    }*/
          v);
  external dynamic
      /*{
        label?: {
            /**
             * Show or hide label on gauge.
             */
            show?: boolean;
            /**
             * Set formatter for the label on gauge.
             */
            format?(value: any, ratio: number): string;
        };
        /**
         * Enable or disable expanding gauge.
         */
        expand?: boolean;
        /**
         * Set min value of the gauge.
         */
        min?: number;
        /**
         * Set max value of the gauge.
         */
        max?: number;
        /**
         * Set units of the gauge.
         */
        units?: string;
        /**
         * Set width of gauge chart.
         */
        width?: number;
    }*/
      get gauge;
  external set gauge(
      dynamic
          /*{
        label?: {
            /**
             * Show or hide label on gauge.
             */
            show?: boolean;
            /**
             * Set formatter for the label on gauge.
             */
            format?(value: any, ratio: number): string;
        };
        /**
         * Enable or disable expanding gauge.
         */
        expand?: boolean;
        /**
         * Set min value of the gauge.
         */
        min?: number;
        /**
         * Set max value of the gauge.
         */
        max?: number;
        /**
         * Set units of the gauge.
         */
        units?: string;
        /**
         * Set width of gauge chart.
         */
        width?: number;
    }*/
          v);
  external dynamic
      /*{
        interpolation?: {
            /**
             * Set custom spline interpolation
             */
            type?: 'linear' | 'linear-closed' | 'basis' | 'basis-open' | 'basis-closed' | 'bundle' | 'cardinal' | 'cardinal-open' | 'cardinal-closed' | 'monotone';
        };
    }*/
      get spline;
  external set spline(
      dynamic
          /*{
        interpolation?: {
            /**
             * Set custom spline interpolation
             */
            type?: 'linear' | 'linear-closed' | 'basis' | 'basis-open' | 'basis-closed' | 'bundle' | 'cardinal' | 'cardinal-open' | 'cardinal-closed' | 'monotone';
        };
    }*/
          v);
}

@anonymous
@JS()
abstract class Data {
  /// Load a CSV or JSON file from a URL. Note that this will not work if loading via the "file://" protocol as most browsers with block XMLHTTPRequests.
  external String get url;
  external set url(String v);

  /// Parse a JSON object for data.
  external dynamic /*{}*/ get json;
  external set json(dynamic /*{}*/ v);

  /// Load data from a multidimensional array, with the first element containing the data names, the following containing related data in that order.
  external List<List<dynamic /*String|bool|num|Null*/ >> get rows;
  external set rows(List<List<dynamic /*String|bool|num|Null*/ >> v);

  /// Load data from a multidimensional array, with each element containing an array consisting of a datum name and associated data values.
  external List<List<dynamic /*String|bool|num|Null*/ >> get columns;
  external set columns(List<List<dynamic /*String|bool|num|Null*/ >> v);

  /// Used if loading JSON via data.url
  external String get mimeType;
  external set mimeType(String v);

  /// Choose which JSON object keys correspond to desired data.
  external dynamic /*{ x?: string; value: string[]; }*/ get keys;
  external set keys(dynamic /*{ x?: string; value: string[]; }*/ v);

  /// Specify the key of x values in the data.
  /// We can show the data with non-index x values by this option. This option is required when the type of x axis is timeseries. If this option is set on category axis, the values of the data
  /// on the key will be used for category names.
  external String get x;
  external set x(String v);

  /// Specify the keys of the x values for each data.
  /// This option can be used if we want to show the data that has different x values.
  external dynamic /*JSMap of <String,String>*/ get xs;
  external set xs(dynamic /*JSMap of <String,String>*/ v);

  /// Set a format to parse string specifed as x.
  /// Default is %Y-%m-%d
  external String get xFormat;
  external set xFormat(String v);

  /// xLocaltime?: any;
  /// xSort?: any;
  /// Set custom data name.
  external dynamic /*JSMap of <String,String>*/ get names;
  external set names(dynamic /*JSMap of <String,String>*/ v);

  /// Set custom data class.
  /// If this option is specified, the element g for the data has an additional class that has the prefix c3-target- (e.g. c3-target-additional-data1-class).
  external dynamic /*JSMap of <String,String>*/ get classes;
  external set classes(dynamic /*JSMap of <String,String>*/ v);

  /// Set groups for the data for stacking.
  external List<List<String>> get groups;
  external set groups(List<List<String>> v);

  /// Set y axis the data related to. y and y2 can be used.
  external dynamic /*JSMap of <String,String>*/ get axes;
  external set axes(dynamic /*JSMap of <String,String>*/ v);

  /// Set chart type at once.
  /// If this option is specified, the type will be applied to every data. This setting can be overwritten by data.types.
  /// Available Values: line, spline, step, area, area-spline, area-step, bar, scatter, pie, donut, gauge
  external String get type;
  external set type(String v);

  /// Set chart type for each data.
  /// This setting overwrites data.type setting.
  external dynamic /*JSMap of <String,String>*/ get types;
  external set types(dynamic /*JSMap of <String,String>*/ v);

  /// Show labels on each data points or set formatter function for data labels.
  /// The formatter function receives 4 arguments such as v, id, i, j and it must return a string that will be shown as the label. The arguments are:
  /// - v is the value of the data point where the label is shown.
  /// - id is the id of the data where the label is shown.
  /// - i is the index of the data point where the label is shown.
  /// - j is the sub index of the data point where the label is shown.
  /// Formatter function can be defined for each data by specifying as an object and D3 formatter function can be set (e.g. d3.format('$'))
  external dynamic /*bool|{ format: FormatFunction }|{ format: { [key: string]: FormatFunction } }*/ get labels;
  external set labels(
      dynamic /*bool|{ format: FormatFunction }|{ format: { [key: string]: FormatFunction } }*/ v);

  /// Define the order of the data.
  /// This option changes the order of stacking the data and pieces of pie/donut. If null specified, it will be the order the data loaded. If function specified, it will be used to sort the data
  /// and it will recieve the data as argument.
  /// Available Values: desc, asc, function (data1, data2) { ... }, null
  external dynamic /*String|(...data: string[]) => void|Null*/ get order;
  external set order(dynamic /*String|(...data: string[]) => void|Null*/ v);

  /// Define regions for each data.
  /// The values must be an array for each data and it should include an object that has start, end, style. If start is not set, the start will be the first data point. If end is not set, the
  /// end will be the last data point.
  /// Currently this option supports only line chart and dashed style. If this option specified, the line will be dashed only in the regions.
  external dynamic /*JSMap of <String,dynamic>*/ get regions;
  external set regions(dynamic /*JSMap of <String,dynamic>*/ v);

  /// Set color converter function.
  /// This option should a function and the specified function receives color (e.g. '#ff0000') and d that has data parameters like id, value, index, etc. And it must return a string that
  /// represents color (e.g. '#00ff00').
  external dynamic /*String|d3.Rgb*/ color(String color, dynamic d);

  /// Set color for each data.
  external dynamic /*JSMap of <String,String|d3.Rgb|Func1<dynamic, String|d3.Rgb>>*/ get colors;
  external set colors(
      dynamic /*JSMap of <String,String|d3.Rgb|Func1<dynamic, String|d3.Rgb>>*/ v);

  /// Hide each data when the chart appears.
  /// If true specified, all of data will be hidden. If multiple ids specified as an array, those will be hidden.
  external dynamic /*bool|List<String>*/ get hide;
  external set hide(dynamic /*bool|List<String>*/ v);

  /// Set text displayed when empty data.
  external dynamic /*{ label: { text: string } }*/ get empty;
  external set empty(dynamic /*{ label: { text: string } }*/ v);
  external dynamic
      /*{
        enabled?: boolean;
        grouped?: boolean;
        multiple?: boolean;
        draggable?: boolean;
        isselectable?(d?: any): boolean;
    }*/
      get selection;
  external set selection(
      dynamic
          /*{
        enabled?: boolean;
        grouped?: boolean;
        multiple?: boolean;
        draggable?: boolean;
        isselectable?(d?: any): boolean;
    }*/
          v);

  /// Set a callback for click event on each data point.
  /// This callback will be called when each data point clicked and will receive d and element as the arguments.
  /// - d is the data clicked and element is the element clicked. In this callback, this will be the Chart object.
  external void onclick(dynamic d, dynamic element);

  /// Set a callback for mouseover event on each data point.
  /// This callback will be called when mouse cursor moves onto each data point and will receive d as the argument.
  /// - d is the data where mouse cursor moves onto. In this callback, this will be the Chart object.
  external void onmouseover(dynamic d, [dynamic element]);

  /// Set a callback for mouseout event on each data point.
  /// This callback will be called when mouse cursor moves out each data point and will receive d as the argument.
  /// - d is the data where mouse cursor moves out. In this callback, this will be the Chart object.
  external void onmouseout(dynamic d, [dynamic element]);
  external void onselected(dynamic d, [dynamic element]);
  external void onunselected(dynamic d, [dynamic element]);
}

@anonymous
@JS()
abstract class Axis {
  /// Switch x and y axis position.
  external bool get rotated;
  external set rotated(bool v);
  external XAxisConfiguration get x;
  external set x(XAxisConfiguration v);
  external YAxisConfiguration get y;
  external set y(YAxisConfiguration v);
  external YAxisConfiguration get y2;
  external set y2(YAxisConfiguration v);
  external factory Axis(
      {bool rotated,
      XAxisConfiguration x,
      YAxisConfiguration y,
      YAxisConfiguration y2});
}

@anonymous
@JS()
abstract class XAxisConfiguration {
  /// Show or hide x axis.
  external bool get show;
  external set show(bool v);

  /// Set type of x axis (timeseries, category, indexed)
  external String get type;
  external set type(String v);

  /// Set how to treat the timezone of x values.
  /// If true, treat x value as localtime. If false, convert to UTC internally.
  external bool get localtime;
  external set localtime(bool v);

  /// Set category names on category axis.
  /// This must be an array that includes category names in string. If category names are included in the date by data.x option, this is not required.
  external List<String> get categories;
  external set categories(List<String> v);
  external XTickConfiguration get tick;
  external set tick(XTickConfiguration v);

  /// Set max value of x axis range.
  external dynamic /*String|num|DateTime*/ get max;
  external set max(dynamic /*String|num|DateTime*/ v);

  /// Set min value of x axis range.
  external dynamic /*String|num|DateTime*/ get min;
  external set min(dynamic /*String|num|DateTime*/ v);

  /// Set padding for x axis.
  /// If this option is set, the range of x axis will increase/decrease according to the values. If no padding is needed in the ragen of x axis, 0 should be set. On category axis, this option
  /// will be ignored.
  external dynamic /*{
        left?: number;
        right?: number;
    }*/
      get padding;
  external set padding(
      dynamic
          /*{
        left?: number;
        right?: number;
    }*/
          v);

  /// Set height of x axis.
  /// The height of x axis can be set manually by this option. If you need more space for x axis, please use this option for that. The unit is pixel.
  external num get height;
  external set height(num v);

  /// Set default extent for subchart and zoom. This can be an array or function that returns an array.
  external dynamic /*List<num>|Func0<List<num>>*/ get extent;
  external set extent(dynamic /*List<num>|Func0<List<num>>*/ v);

  /// Set label on x axis.
  /// You can set x axis label and change its position by this option. string and object can be passed and we can change the poisiton by passing object that has position key. Available position
  /// differs according to the axis direction (vertical or horizontal). If string set, the position will be the default.
  /// Valid horizontal positions: inner-right (Default), inner-center, inner-left, outer-right, outer-center, outer-left
  /// Valid vertical positions: inner-top, inner-middle, inner-bottom, outer-top, outer-middle, outer-bottom
  external dynamic /*String|{ text: string; position: string }*/ get label;
  external set label(dynamic /*String|{ text: string; position: string }*/ v);
  external factory XAxisConfiguration(
      {bool show,
      String type,
      bool localtime,
      List<String> categories,
      XTickConfiguration tick,
      dynamic /*String|num|DateTime*/ max,
      dynamic /*String|num|DateTime*/ min,
      dynamic
          /*{
        left?: number;
        right?: number;
    }*/
          padding,
      num height,
      dynamic /*List<num>|Func0<List<num>>*/ extent,
      dynamic /*String|{ text: string; position: string }*/ label});
}

@anonymous
@JS()
abstract class YAxisConfiguration {
  /// Show or hide y axis.
  external bool get show;
  external set show(bool v);

  /// Show y axis inside of the chart.
  external bool get inner;
  external set inner(bool v);

  /// Set max value of y axis.
  external num get max;
  external set max(num v);

  /// Set min value of y axis.
  external num get min;
  external set min(num v);

  /// Change the direction of y axis.
  /// If true set, the direction will be from the top to the bottom.
  external bool get inverted;
  external set inverted(bool v);

  /// Set center value of y axis.
  external num get center;
  external set center(num v);

  /// Set label on y axis. This option works in the same way as axis.x.label.
  /// Valid horizontal positions: inner-right (Default), inner-center, inner-left, outer-right, outer-center, outer-left
  /// Valid vertical positions: inner-top, inner-middle, inner-bottom, outer-top, outer-middle, outer-bottom
  external dynamic /*String|{ text: string; position: string }*/ get label;
  external set label(dynamic /*String|{ text: string; position: string }*/ v);
  external YTickConfiguration get tick;
  external set tick(YTickConfiguration v);

  /// Set padding for y axis.
  /// You can set padding for y axis to create more space on the edge of the axis. This option accepts object and it can include top and bottom. top, bottom will be treated as pixels.
  external dynamic /*{
        top?: number;
        bottom?: number;
    }*/
      get padding;
  external set padding(
      dynamic
          /*{
        top?: number;
        bottom?: number;
    }*/
          v);

  /// Set default range of y axis. This option set the default value for y axis when there is no data on init.
  external List<num> get JS$default;
  external set JS$default(List<num> v);
  external factory YAxisConfiguration(
      {bool show,
      bool inner,
      num max,
      num min,
      bool inverted,
      num center,
      dynamic /*String|{ text: string; position: string }*/ label,
      YTickConfiguration tick,
      dynamic
          /*{
        top?: number;
        bottom?: number;
    }*/
          padding,
      List<num> JS$default});
}

@anonymous
@JS()
abstract class XTickConfiguration {
  /// Centerise ticks on category axis
  external bool get centered;
  external set centered(bool v);

  /// A function to format tick value. Format string is also available for timeseries data.
  external dynamic /*String|Func1<num|DateTime, String|num>*/ get format;
  external set format(dynamic /*String|Func1<num|DateTime, String|num>*/ v);

  /// Setting for culling ticks.
  /// If true is set, the ticks will be culled, then only limitted tick text will be shown. This option does not hide the tick lines. If false is set, all of ticks will be shown.
  external dynamic /*bool|CullingConfiguration*/ get culling;
  external set culling(dynamic /*bool|CullingConfiguration*/ v);

  /// The number of x axis ticks to show.
  /// This option hides tick lines together with tick text. If this option is used on timeseries axis, the ticks position will be determined precisely and not nicely positioned (e.g. it will
  /// have rough second value).
  external num get count;
  external set count(num v);

  /// Fit x axis ticks.
  /// If true set, the ticks will be positioned nicely. If false set, the ticks will be positioned according to x value of the data points.
  external bool get fit;
  external set fit(bool v);

  /// Set the x values of ticks manually.
  /// If this option is provided, the position of the ticks will be determined based on those values. This option works with timeseries data and the x values will be parsed accoding to the type
  /// of the value and data.xFormat option.
  external List<dynamic> /*List<num>|List<String>*/ get values;
  external set values(List<dynamic> /*List<num>|List<String>*/ v);

  /// Rotate x axis tick text. If you set negative value, it will rotate to opposite direction.
  external num get rotate;
  external set rotate(num v);

  /// Show x axis outer tick.
  external bool get outer;
  external set outer(bool v);

  /// Set width of x axis tick.
  external num get width;
  external set width(num v);
  external bool get multiline;
  external set multiline(bool v);
  external factory XTickConfiguration(
      {bool centered,
      dynamic /*String|Func1<num|DateTime, String|num>*/ format,
      dynamic /*bool|CullingConfiguration*/ culling,
      num count,
      bool fit,
      List<dynamic> /*List<num>|List<String>*/ values,
      num rotate,
      bool outer,
      num width,
      bool multiline});
}

@anonymous
@JS()
abstract class YTickConfiguration {
  /// Set formatter for y axis tick text.
  /// This option accepts d3.format object as well as a function you define.
  external String format(num x);

  /// Show or hide outer tick.
  external bool get outer;
  external set outer(bool v);

  /// Set the y values of ticks manually.
  external List<num> get values;
  external set values(List<num> v);

  /// The number of y axis ticks to show.
  /// The position of the ticks will be calculated precisely, so the values on the ticks will not be rounded nicely. In the case, axis.y.tick.format or axis.y.tick.values will be helpful.
  external num get count;
  external set count(num v);
}

@anonymous
@JS()
abstract class CullingConfiguration {
  /// The number of tick texts will be adjusted to less than this value.
  external num get max;
  external set max(num v);
  external factory CullingConfiguration({num max});
}

@anonymous
@JS()
abstract class Grid {
  external dynamic
      /*{
        /**
         * Show grids along x axis.
         */
        show?: boolean;
        /**
         * Show additional grid lines along x axis.
         * This option accepts array including object that has value, text, position and class. text, position and class are optional. For position, start, middle and end (default) are available.
         * If x axis is category axis, value can be category name. If x axis is timeseries axis, value can be date string, Date object and unixtime integer.
         */
        lines?: LineOptions[];
    }*/
      get x;
  external set x(
      dynamic
          /*{
        /**
         * Show grids along x axis.
         */
        show?: boolean;
        /**
         * Show additional grid lines along x axis.
         * This option accepts array including object that has value, text, position and class. text, position and class are optional. For position, start, middle and end (default) are available.
         * If x axis is category axis, value can be category name. If x axis is timeseries axis, value can be date string, Date object and unixtime integer.
         */
        lines?: LineOptions[];
    }*/
          v);
  external dynamic
      /*{
        /**
         * Show grids along y axis.
         */
        show?: boolean;
        /**
         * Show additional grid lines along y axis.
         * This option accepts array including object that has value, text, position and class.
         */
        lines?: LineOptions[];
    }*/
      get y;
  external set y(
      dynamic
          /*{
        /**
         * Show grids along y axis.
         */
        show?: boolean;
        /**
         * Show additional grid lines along y axis.
         * This option accepts array including object that has value, text, position and class.
         */
        lines?: LineOptions[];
    }*/
          v);
  external factory Grid(
      {dynamic
          /*{
        /**
         * Show grids along x axis.
         */
        show?: boolean;
        /**
         * Show additional grid lines along x axis.
         * This option accepts array including object that has value, text, position and class. text, position and class are optional. For position, start, middle and end (default) are available.
         * If x axis is category axis, value can be category name. If x axis is timeseries axis, value can be date string, Date object and unixtime integer.
         */
        lines?: LineOptions[];
    }*/
          x,
      dynamic
          /*{
        /**
         * Show grids along y axis.
         */
        show?: boolean;
        /**
         * Show additional grid lines along y axis.
         * This option accepts array including object that has value, text, position and class.
         */
        lines?: LineOptions[];
    }*/
          y});
}

@anonymous
@JS()
abstract class LineOptions {
  external dynamic /*String|num|DateTime*/ get value;
  external set value(dynamic /*String|num|DateTime*/ v);
  external String get text;
  external set text(String v);
  external String get axis;
  external set axis(String v);
  external String get position;
  external set position(String v);
  external String get JS$class;
  external set JS$class(String v);
  external factory LineOptions(
      {dynamic /*String|num|DateTime*/ value,
      String text,
      String axis,
      String position,
      String JS$class});
}

@anonymous
@JS()
abstract class RegionOptions {
  external String get axis;
  external set axis(String v);
  external dynamic /*String|num|DateTime*/ get start;
  external set start(dynamic /*String|num|DateTime*/ v);
  external dynamic /*String|num|DateTime*/ get end;
  external set end(dynamic /*String|num|DateTime*/ v);
  external String get JS$class;
  external set JS$class(String v);
  external factory RegionOptions(
      {String axis,
      dynamic /*String|num|DateTime*/ start,
      dynamic /*String|num|DateTime*/ end,
      String JS$class});
}

@anonymous
@JS()
abstract class LegendOptions {
  /// Show or hide legend.
  external bool get show;
  external set show(bool v);

  /// Hide legend
  /// If true given, all legend will be hidden. If string or array given, only the legend that has the id will be hidden.
  external dynamic /*bool|List<String>|String*/ get hide;
  external set hide(dynamic /*bool|List<String>|String*/ v);

  /// Change the position of legend.
  /// Currently bottom, right and inset are supported.
  external String get position;
  external set position(String v);

  /// Change inset legend attributes.
  /// This option accepts object that has the keys anchor, x, y and step.
  /// anchor decides the position of the legend. These anchors are available: top-left, top-right, bottom-left, bottom-right
  /// x and y set the position of the legend based on the anchor.
  /// step defines the max step the lagend has (e.g. If 2 set and legend has 3 legend item, the legend 2 columns).
  external dynamic
      /*{
        anchor?: string;
        x?: number;
        y?: number;
        step?: number;
    }*/
      get inset;
  external set inset(
      dynamic
          /*{
        anchor?: string;
        x?: number;
        y?: number;
        step?: number;
    }*/
          v);
  external dynamic
      /*{
        /**
         * Set click event handler to the legend item.
         */
        onclick?(id: any): void;
        /**
         * Set mouseover event handler to the legend item.
         */
        onmouseover?(id: any): void;
        /**
         * Set mouseout event handler to the legend item.
         */
        onmouseout?(id: any): void;
    }*/
      get item;
  external set item(
      dynamic
          /*{
        /**
         * Set click event handler to the legend item.
         */
        onclick?(id: any): void;
        /**
         * Set mouseover event handler to the legend item.
         */
        onmouseover?(id: any): void;
        /**
         * Set mouseout event handler to the legend item.
         */
        onmouseout?(id: any): void;
    }*/
          v);
  external factory LegendOptions(
      {bool show,
      dynamic /*bool|List<String>|String*/ hide,
      String position,
      dynamic
          /*{
        anchor?: string;
        x?: number;
        y?: number;
        step?: number;
    }*/
          inset,
      dynamic
          /*{
        /**
         * Set click event handler to the legend item.
         */
        onclick?(id: any): void;
        /**
         * Set mouseover event handler to the legend item.
         */
        onmouseover?(id: any): void;
        /**
         * Set mouseout event handler to the legend item.
         */
        onmouseout?(id: any): void;
    }*/
          item});
}

@anonymous
@JS()
abstract class TooltipOptions {
  /// Show or hide tooltip.
  external bool get show;
  external set show(bool v);

  /// Set if tooltip is grouped or not for the data points.
  external bool get grouped;
  external set grouped(bool v);
  external dynamic
      /*{
        /**
         * Set format for the title of tooltip. Specified function receives x of the data point to show.
         */
        title?(x: any): string;
        /**
         * Set format for the name of each data in tooltip. Specified function receives name, ratio, id and index of the data point to show. ratio will be undefined if the chart is not
         * donut/pie/gauge.
         */
        name?(name: string, ratio: number, id: string, index: number): string;
        /**
         * Set format for the value of each data in tooltip.
         * Specified function receives name, ratio, id and index of the data point to show. ratio will be undefined if the chart is not donut/pie/gauge.
         * If undefined returned, the row of that value will be skipped.
         */
        value?(value: any, ratio: number, id: string, index: number): string;
    }*/
      get format;
  external set format(
      dynamic
          /*{
        /**
         * Set format for the title of tooltip. Specified function receives x of the data point to show.
         */
        title?(x: any): string;
        /**
         * Set format for the name of each data in tooltip. Specified function receives name, ratio, id and index of the data point to show. ratio will be undefined if the chart is not
         * donut/pie/gauge.
         */
        name?(name: string, ratio: number, id: string, index: number): string;
        /**
         * Set format for the value of each data in tooltip.
         * Specified function receives name, ratio, id and index of the data point to show. ratio will be undefined if the chart is not donut/pie/gauge.
         * If undefined returned, the row of that value will be skipped.
         */
        value?(value: any, ratio: number, id: string, index: number): string;
    }*/
          v);

  /// Set custom position for the tooltip. This option can be used to modify the tooltip position by returning object that has top and left.
  external dynamic /*{ top: number; left: number }*/ position(
      dynamic data, num width, num height, dynamic element);

  /// Set custom HTML for the tooltip.
  /// Specified function receives data, defaultTitleFormat, defaultValueFormat and color of the data point to show. If tooltip.grouped is true, data includes multiple data points.
  external set contents(dynamic func);
  /*(dynamic data, String defaultTitleFormat,
      String defaultValueFormat, dynamic color);*/

  /// Set tooltip values order
  /// Available Values: desc, asc, any[], function (data1, data2) { ... }, null
  external dynamic /*String|List<dynamic>|Func2<dynamic, dynamic, num>|Null*/ get order;
  external set order(
      dynamic /*String|List<dynamic>|Func2<dynamic, dynamic, num>|Null*/ v);
}

@anonymous
@JS()
abstract class SubchartOptions {
  /// Show sub chart on the bottom of the chart.
  external bool get show;
  external set show(bool v);
  external dynamic
      /*{
        /**
         * Change the height of the subchart.
         */
        height: number;
    }*/
      get size;
  external set size(
      dynamic
          /*{
        /**
         * Change the height of the subchart.
         */
        height: number;
    }*/
          v);

  /// Set callback for brush event.
  /// Specified function receives the current zoomed x domain.
  external void onbrush(dynamic domain);
}

@anonymous
@JS()
abstract class ZoomOptions {
  /// Enable zooming.
  external bool get enabled;
  external set enabled(bool v);

  /// Enable to rescale after zooming. If true set, y domain will be updated according to the zoomed region.
  external bool get rescale;
  external set rescale(bool v);

  /// Change zoom extent.
  external List<num> /*Tuple of <num,num>*/ get extent;
  external set extent(List<num> /*Tuple of <num,num>*/ v);

  /// Set callback that is called when the chart is zooming. Specified function receives the zoomed domain.
  external void onzoom(dynamic domain);

  /// Set callback that is called when zooming starts. Specified function receives the zoom event.
  external void onzoomstart(Event event);

  /// Set callback that is called when zooming ends. Specified function receives the zoomed domain.
  external void onzoomend(dynamic domain);
}

@anonymous
@JS()
abstract class PointOptions {
  /// Whether to show each point in line.
  external bool get show;
  external set show(bool v);

  /// The radius size of each point.
  external dynamic /*num|Func1<dynamic, num>*/ get r;
  external set r(dynamic /*num|Func1<dynamic, num>*/ v);
  external dynamic
      /*{
        expand: {
            /**
             * Whether to expand each point on focus.
             */
            enabled?: boolean;
            /**
             * The radius size of each point on focus.
             */
            r?: number
        };
    }*/
      get focus;
  external set focus(
      dynamic
          /*{
        expand: {
            /**
             * Whether to expand each point on focus.
             */
            enabled?: boolean;
            /**
             * The radius size of each point on focus.
             */
            r?: number
        };
    }*/
          v);
  external dynamic
      /*{
        /**
         * The radius size of each point on selected.
         */
        r?: number;
    }*/
      get select;
  external set select(
      dynamic
          /*{
        /**
         * The radius size of each point on selected.
         */
        r?: number;
    }*/
          v);
  external factory PointOptions(
      {bool show,
      dynamic /*num|Func1<dynamic, num>*/ r,
      dynamic
          /*{
        expand: {
            /**
             * Whether to expand each point on focus.
             */
            enabled?: boolean;
            /**
             * The radius size of each point on focus.
             */
            r?: number
        };
    }*/
          focus,
      dynamic
          /*{
        /**
         * The radius size of each point on selected.
         */
        r?: number;
    }*/
          select});
}

@anonymous
@JS()
abstract class ChartAPI {
  /// This API highlights specified targets and fade out the others.
  /// You can specify multiple targets by giving an array that includes id as String. If no argument is given, all of targets will be highlighted.
  external void focus([dynamic /*List<String>|String*/ targetIds]);

  /// This API fades out specified targets and reverts the others.
  /// You can specify multiple targets by giving an array that includes id as String. If no argument is given, all of targets will be faded out.
  external void defocus([dynamic /*List<String>|String*/ targetIds]);

  /// This API reverts specified targets.
  /// You can specify multiple targets by giving an array that includes id as String. If no argument is given, all of targets will be reverted.
  external void revert([dynamic /*List<String>|String*/ targetIds]);

  /// This API shows specified targets.
  /// You can specify multiple targets by giving an array that includes id as String. If no argument is given, all of targets will be shown.
  /// If withLegend is set true, legend will be shown together with the specified data.
  external void show(
      [dynamic /*List<String>|String*/ targetIds,
      dynamic /*{ withLegend: boolean }*/ options]);

  /// This API hides specified targets.
  /// You can specify multiple targets by giving an array that includes id as String. If no argument is given, all of targets will be hidden.
  /// If withLegend is set true, legend will be hidden together with the specified data.
  external void hide(
      [dynamic /*List<String>|String*/ targetIds,
      dynamic /*{ withLegend: boolean }*/ options]);

  /// This API toggles (shows or hides) specified targets.
  /// You can specify multiple targets by giving an array that includes id as String. If no argument is given, all of targets will be toggles.
  /// If withLegend is set true, legend will be toggled together with the specified data.
  external void toggle(
      [dynamic /*List<String>|String*/ targetIds,
      dynamic /*{ withLegend: boolean }*/ options]);

  /// Load data to the chart.
  /// If url, json, rows and columns given, the data will be loaded. If data that has the same target id is given, the chart will be updated. Otherwise, new target will be added.
  /// If classes given, the classes specifed by data.classes will be updated. classes must be Object that has target id as keys.
  /// If categories given, the categories specifed by axis.x.categories or data.x will be updated. categories must be Array.
  /// If axes given, the axes specifed by data.axes will be updated. axes must be Object that has target id as keys.
  /// If colors given, the colors specifed by data.colors will be updated. colors must be Object that has target id as keys.
  /// If type or types given, the type of targets will be updated. type must be String and types must be Object.
  /// If unload given, data will be unloaded before loading new data. If true given, all of data will be unloaded. If target ids given as String or Array, specified targets will be unloaded.
  /// If done given, the specified function will be called after data loded.
  /// NOTE: unload should be used if some data needs to be unloaded simultaneously. If you call unload API soon after/before load instead of unload param, chart will not be rendered properly
  /// because of cancel of animation.
  /// NOTE: done will be called after data loaded, but it's not after rendering. It's because rendering will finish after some transition and there is some time lag between loading and rendering.
  external void load(
      dynamic
          /*{
        url?: string;
        json?: {};
        keys?: { x?: string; value: string[]; }
        rows?: PrimitiveArray[];
        columns?: PrimitiveArray[];
        names?: { [key: string]: string };
        classes?: { [key: string]: string };
        categories?: string[];
        axes?: { [key: string]: string };
        colors?: { [key: string]: string | d3.Rgb };
        type?: string;
        types?: { [key: string]: string };
        unload?: boolean | ArrayOrString;
        done?(): any;
    }*/
          args);

  /// Unload data to the chart.
  /// You can specify multiple targets by giving an array that includes id as String. If no argument is given, all of targets will be toggles.
  /// If ids given, the data that has specified target id will be unloaded. ids should be String or Array. If ids is not specified, all data will be unloaded.
  /// If done given, the specified function will be called after data loded.
  /// NOTE: If you call load API soon after/before unload, unload param of load should be used. Otherwise chart will not be rendered properly because of cancel of animation.
  /// NOTE: done will be called after data loaded, but it's not after rendering. It's because rendering will finish after some transition and there is some time lag between loading and rendering.
  external dynamic unload([TargetIds targetIds, dynamic done()]);

  /// Flow data to the chart. By this API, you can append new data points to the chart.
  /// If json, rows and columns given, the data will be loaded. If data that has the same target id is given, the chart will be appended. Otherwise, new target will be added. One of these is
  /// required when calling. If json specified, keys is required as well as data.json
  /// If to is given, the lower x edge will move to that point. If not given, the lower x edge will move by the number of given data points.
  /// If length is given, the lower x edge will move by the number of this argument.
  /// If duration is given, the duration of the transition will be specified value. If not given, transition.duration will be used as default.
  /// If done is given, the specified function will be called when flow ends.
  external void flow(
      dynamic
          /*{
        json?: {};
        keys?: { x?: string; value: string[]; }
        rows?: PrimitiveArray[];
        columns?: PrimitiveArray[];
        to?: any;
        length?: number;
        duration?: number;
        done?(): any;
    }*/
          args);

  /// Change data point state to selected. By this API, you can select data points. To use this API, data.selection.enabled needs to be set true.
  external void select([List<String> ids, List<num> indices, bool resetOthers]);

  /// Change data point state to unselected. By this API, you can unselect data points. To use this API, data.selection.enabled needs to be set true.
  external void unselect([List<String> ids, List<num> indices]);

  /// Get selected data points. By this API, you can get selected data points information. To use this API, data.selection.enabled needs to be set true.
  external Data selected([String targetId]);

  /// Change the type of the chart.
  external void transform(String type,
      [dynamic /*List<String>|String*/ targetIds]);

  /// Update groups for the targets.
  external void groups(List<List<String>> groups);
  external GridOperations get xgrids;
  external set xgrids(GridOperations v);
  external GridOperations get ygrids;
  external set ygrids(GridOperations v);
  external dynamic
      /*{
        /**
         * Update regions.
         * @param regions Regions will be replaced with this argument. The format of this argument is the same as regions.
         */
        (regions: any[]): void;
        /**
         * Add new region. This API adds new region instead of replacing like regions.
         * @param grids New region will be added. The format of this argument is the same as regions and it's possible to give an Object if only one region will be added.
         */
        add(regions: any[] | {}): void;
        /**
         * Remove regions. This API removes regions.
         * @param args This argument should include classes. If classes is given, the regions that have one of the specified classes will be removed. If args is not given, all of regions will be
         * removed.
         */
        remove(args?: { value?: number | string; class?: string }): void;
    }*/
      get regions;
  external set regions(
      dynamic
          /*{
        /**
         * Update regions.
         * @param regions Regions will be replaced with this argument. The format of this argument is the same as regions.
         */
        (regions: any[]): void;
        /**
         * Add new region. This API adds new region instead of replacing like regions.
         * @param grids New region will be added. The format of this argument is the same as regions and it's possible to give an Object if only one region will be added.
         */
        add(regions: any[] | {}): void;
        /**
         * Remove regions. This API removes regions.
         * @param args This argument should include classes. If classes is given, the regions that have one of the specified classes will be removed. If args is not given, all of regions will be
         * removed.
         */
        remove(args?: { value?: number | string; class?: string }): void;
    }*/
          v);
  external dynamic
      /*{
        /**
         * Get data loaded in the chart.
         * @param targetIds If this argument is given, this API returns the specified target data. If this argument is not given, all of data will be returned.
         */
        (targetIds?: ArrayOrString): Data;
        /**
         * Get data shown in the chart.
         * @param targetIds If this argument is given, this API filters the data with specified target ids. If this argument is not given, all shown data will be returned.
         */
        shown(targetIds?: ArrayOrString): Data;
        /**
         * Get values of the data loaded in the chart.
         * @param targetIds This API returns the values of specified target. If this argument is not given, null will be retruned.
         */
        values(targetIds?: ArrayOrString): any[];
        /**
         * Get and set names of the data loaded in the chart.
         * @param names If this argument is given, the names of data will be updated. If not given, the current names will be returned. The format of this argument is the same as data.names.
         */
        names(names?: { [key: string]: string }): { [key: string]: string };
        /**
         * Get and set colors of the data loaded in the chart.
         * @param colors If this argument is given, the colors of data will be updated. If not given, the current colors will be returned. The format of this argument is the same as data.colors.
         */
        colors(colors?: { [key: string]: string | d3.Rgb }): { [key: string]: string };
        /**
         * Get and set axes of the data loaded in the chart.
         * @param axes If this argument is given, the axes of data will be updated. If not given, the current axes will be returned. The format of this argument is the same as data.axes.
         */
        axes(axes?: { [key: string]: string }): { [key: string]: string };
    }*/
      get data;
  external set data(
      dynamic
          /*{
        /**
         * Get data loaded in the chart.
         * @param targetIds If this argument is given, this API returns the specified target data. If this argument is not given, all of data will be returned.
         */
        (targetIds?: ArrayOrString): Data;
        /**
         * Get data shown in the chart.
         * @param targetIds If this argument is given, this API filters the data with specified target ids. If this argument is not given, all shown data will be returned.
         */
        shown(targetIds?: ArrayOrString): Data;
        /**
         * Get values of the data loaded in the chart.
         * @param targetIds This API returns the values of specified target. If this argument is not given, null will be retruned.
         */
        values(targetIds?: ArrayOrString): any[];
        /**
         * Get and set names of the data loaded in the chart.
         * @param names If this argument is given, the names of data will be updated. If not given, the current names will be returned. The format of this argument is the same as data.names.
         */
        names(names?: { [key: string]: string }): { [key: string]: string };
        /**
         * Get and set colors of the data loaded in the chart.
         * @param colors If this argument is given, the colors of data will be updated. If not given, the current colors will be returned. The format of this argument is the same as data.colors.
         */
        colors(colors?: { [key: string]: string | d3.Rgb }): { [key: string]: string };
        /**
         * Get and set axes of the data loaded in the chart.
         * @param axes If this argument is given, the axes of data will be updated. If not given, the current axes will be returned. The format of this argument is the same as data.axes.
         */
        axes(axes?: { [key: string]: string }): { [key: string]: string };
    }*/
          v);

  /// Gets and sets the value a category
  external String category(num index, [String category]);

  /// Get and set the categories
  external List<String> categories([List<String> categories]);

  /// Get the color for the specified targetId
  external String color(String targetId);

  /// Get and set x values for the chart.
  external List<dynamic /*String|bool|num|Null*/ > x(
      [List<dynamic /*String|bool|num|Null*/ > x]);

  /// Get and set x values for the chart.
  external dynamic /*JSMap of <String,List<String|bool|num|Null>>*/ xs(
      [dynamic /*JSMap of <String,List<String|bool|num|Null>>*/ xs]);
  external dynamic
      /*{
        /**
         * Get and set axis labels.
         * @param labels If labels is given, specified axis' label will be updated.
         */
        labels(labels?: { [key: string]: string }): { [key: string]: string }
        /**
         * Get and set axis min value.
         * @param min If min is given, specified axis' min value will be updated. If no argument is given, the current min values for each axis will be returned.
         */
        min(min?: number | { [key: string]: number }): number | { [key: string]: number }
        /**
         * Get and set axis max value.
         * @param max If max is given, specified axis' max value will be updated. If no argument is given, the current max values for each axis will be returned.
         */
        max(max?: number | { [key: string]: number }): number | { [key: string]: number }
        /**
         * Get and set axis min and max value.
         * @param range If range is given, specified axis' min and max value will be updated. If no argument is given, the current min and max values for each axis will be returned.
         */
        range(range?: { min?: number | { [key: string]: number }; max?: number | { [key: string]: number } }): { min: number | { [key: string]: number }; max: number | { [key: string]: number } }
    }*/
      get axis;
  external set axis(
      dynamic
          /*{
        /**
         * Get and set axis labels.
         * @param labels If labels is given, specified axis' label will be updated.
         */
        labels(labels?: { [key: string]: string }): { [key: string]: string }
        /**
         * Get and set axis min value.
         * @param min If min is given, specified axis' min value will be updated. If no argument is given, the current min values for each axis will be returned.
         */
        min(min?: number | { [key: string]: number }): number | { [key: string]: number }
        /**
         * Get and set axis max value.
         * @param max If max is given, specified axis' max value will be updated. If no argument is given, the current max values for each axis will be returned.
         */
        max(max?: number | { [key: string]: number }): number | { [key: string]: number }
        /**
         * Get and set axis min and max value.
         * @param range If range is given, specified axis' min and max value will be updated. If no argument is given, the current min and max values for each axis will be returned.
         */
        range(range?: { min?: number | { [key: string]: number }; max?: number | { [key: string]: number } }): { min: number | { [key: string]: number }; max: number | { [key: string]: number } }
    }*/
          v);
  external dynamic
      /*{
        /**
         * Show legend for each target.
         * @param targetIds If targetIds is given, specified target's legend will be shown. If only one target is the candidate, String can be passed. If no argument is given, all of target's
         * legend will be shown.
         */
        show(targetIds?: ArrayOrString): void;
        /**
         * Hide legend for each target.
         * @param targetIds If targetIds is given, specified target's legend will be hidden. If only one target is the candidate, String can be passed. If no argument is given, all of target's
         * legend will be hidden.
         */
        hide(targetIds?: ArrayOrString): void;
    }*/
      get legend;
  external set legend(
      dynamic
          /*{
        /**
         * Show legend for each target.
         * @param targetIds If targetIds is given, specified target's legend will be shown. If only one target is the candidate, String can be passed. If no argument is given, all of target's
         * legend will be shown.
         */
        show(targetIds?: ArrayOrString): void;
        /**
         * Hide legend for each target.
         * @param targetIds If targetIds is given, specified target's legend will be hidden. If only one target is the candidate, String can be passed. If no argument is given, all of target's
         * legend will be hidden.
         */
        hide(targetIds?: ArrayOrString): void;
    }*/
          v);
  external dynamic
      /*{
        /**
         * Zoom by giving x domain.
         * @param domain If domain is given, the chart will be zoomed to the given domain. If no argument is given, the current zoomed domain will be returned.
         */
        (domain?: number[]): number[];

        /**
         * Enable and disable zooming.
         * @param enabled If enabled is true, the feature of zooming will be enabled. If false is given, it will be disabled.
         */
        enable(enabled: boolean): void;
    }*/
      get zoom;
  external set zoom(
      dynamic
          /*{
        /**
         * Zoom by giving x domain.
         * @param domain If domain is given, the chart will be zoomed to the given domain. If no argument is given, the current zoomed domain will be returned.
         */
        (domain?: number[]): number[];

        /**
         * Enable and disable zooming.
         * @param enabled If enabled is true, the feature of zooming will be enabled. If false is given, it will be disabled.
         */
        enable(enabled: boolean): void;
    }*/
          v);

  /// Unzoom to the original domain.
  external void unzoom();

  /// Resize the chart. If no size is specified it will resize to fit.
  external void resize([dynamic /*{ width?: number; height?: number }*/ size]);

  /// Force to redraw.
  external void flush();

  /// Reset the chart object and remove element and events completely.
  external void destroy();
}

@anonymous
@JS()
abstract class GridOperations {
  /// Update the x/y grid lines.
  external void call(List<dynamic> grids);

  /// Add x/y grid lines. This API adds new x/y grid lines instead of replacing like xgrids.
  external void add(dynamic /*List<dynamic>|{}*/ grids);

  /// Remove x/y grid lines. This API removes x/y grid lines.
  /// have specified class will be removed. If args is not given, all of x/y grid lines will be removed.
  external void remove(
      [dynamic /*{ class?: string; value?: number | string }*/ args]);
}

@JS()
external ChartAPI generate(ChartConfiguration config);
