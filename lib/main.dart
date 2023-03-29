import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:fwfh_webview/fwfh_webview.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'fwfh_webview',
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            left: false,
            top: true,
            bottom: true,
            right: false,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: HtmlWidget(
                    '<iframe src="https://www.parolla.app"></iframe>',
                    factoryBuilder: () => MyWidgetFactory(),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

class MyWidgetFactory extends WidgetFactory with WebViewFactory {}
