library c3_dart.loader;

import 'dart:async';
import 'dart:html';

import 'package:dart_browser_loader/dart_browser_loader.dart';

Future<LinkElement> loadC3Styles() =>
    loadLink("https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.18/c3.min.css",
        id: "c3-css");

Future<ScriptElement> loadD3Script() =>
    loadScript("https://cdnjs.cloudflare.com/ajax/libs/d3/3.5.17/d3.min.js",
        isAsync: false, id: "d3-js");

Future<ScriptElement> loadC3Script() =>
    loadScript("/packages/c3/c3.min.js", isAsync: false, id: "c3-js");

Future<Null> load() async {
  await loadD3Script();
  await Future.wait([loadC3Styles(), loadC3Script()]);
}
