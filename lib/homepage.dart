import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';

import 'models/ganjoor/GanjoorPoetViewModel.dart';
import 'services/ganjoor-service.dart';

class HomePage extends StatefulWidget {
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with AfterLayoutMixin<HomePage> {
  List<GanjoorPoetViewModel> _poets = [];

  Future _loadPoets() async {
    var p = (await GanjoorService().poets()).item1;
    setState(() {
      _poets = p;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('گنجور'),
      ),
      body: Center(
        child: SingleChildScrollView(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Wrap(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug painting" (press "p" in the console, choose the
            // "Toggle Debug Paint" action from the Flutter Inspector in Android
            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
            // to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            spacing: 8.0, // gap between adjacent chips
            runSpacing: 8.0, // gap between lines
            children: _poets
                .map((poet) => Column(children: [
                      FlatButton(
                        onPressed: () {}, // handle your image tap here
                        child: Image(
                          image: AssetImage(
                              'images/poets/' + poet.id.toString() + '.png'),
                          width: 82,
                          height: 100,
                        ),
                      ),
                      FlatButton(onPressed: () {}, child: Text(poet.name)),
                    ]))
                .toList(),
          ),
        ),
      ),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) async {
    await _loadPoets();
  }
}
