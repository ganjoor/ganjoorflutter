import 'package:flutter/material.dart';
import 'package:ganjoorflutter/homepage.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:universal_html/html.dart';

void main() {
  runApp(GanjoorApp());
}

class GanjoorApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GanjoorAppState();
}

class _GanjoorAppState extends State<GanjoorApp> {
  @override
  void initState() {
    super.initState();

    if (kIsWeb) {
      // Remove `loading` div
      final loader = document.getElementsByClassName('loading');
      if (loader.isNotEmpty) {
        loader.first.remove();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'گنجور',
        theme: ThemeData(
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
            primarySwatch: Colors.deepOrange,
            fontFamily: 'Samim'),
        home: HomePage(),
        builder: (BuildContext context, Widget child) {
          return Directionality(
            textDirection: TextDirection.rtl,
            child: Builder(
              builder: (BuildContext context) {
                return MediaQuery(
                  data: MediaQuery.of(context).copyWith(
                    textScaleFactor: 1.0,
                  ),
                  child: child,
                );
              },
            ),
          );
        });
  }
}
