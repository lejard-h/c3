import 'dart:html';
import 'package:c3/c3.dart' as c3;

import 'package:js/js_util.dart';

Future<void> main() async {
  final container = document.querySelector('#chart');

  final data = c3.Data()
    ..columns = [
      ['data1', 30, 200, 100, 400, 150, 250],
      ['data2', 50, 20, 10, 40, 15, 25]
    ]
    ..types = jsify({'data2': 'bar'})
    ..axes = jsify({'data2': 'y2'});

  final configuration = c3.ChartConfiguration()
    ..bindto = container
    ..data = data
    ..axis = (c3.Axis()
      ..y = (c3.YAxisConfiguration()
        ..label = jsify({'text': 'Y Label', 'position': 'outer-middle'}))
      ..y2 = (c3.YAxisConfiguration()
        ..show = true
        ..label = jsify({'text': 'Y2 Label', 'position': 'outer-middle'})));

  final chart = c3.generate(configuration);

  chart.load(c3.Data()
    ..columns = [
      ['data1', 300, 100, 250, 150, 300, 150, 500],
      ['data2', 100, 200, 150, 50, 100, 250]
    ]);
}
