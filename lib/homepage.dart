import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:loading_overlay/loading_overlay.dart';

import 'models/ganjoor/GanjoorPoemCompleteViewModel.dart';
import 'models/ganjoor/GanjoorPoetCompleteViewModel.dart';
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
  final GlobalKey<ScaffoldMessengerState> _key =
      GlobalKey<ScaffoldMessengerState>();
  bool _isLoading = false;

  List<GanjoorPoetViewModel> _poets = [];
  GanjoorPoetCompleteViewModel _poet;
  GanjoorPoetCompleteViewModel _cat;
  GanjoorPoemCompleteViewModel _poem;

  Future _loadPoets() async {
    setState(() {
      _isLoading = true;
    });
    var res = await GanjoorService().poets();
    setState(() {
      _isLoading = false;
    });

    if (res.item2.isNotEmpty) {
      _key.currentState.showSnackBar(SnackBar(
        content: Text("خطا در دریافت فهرست شاعران: " + res.item2),
        backgroundColor: Colors.red,
      ));
    } else {
      setState(() {
        _poets = res.item1;
      });
    }
  }

  Future _loadPoet(int id) async {
    setState(() {
      _isLoading = true;
    });
    var res = await GanjoorService().getPoetById(id);
    setState(() {
      _isLoading = false;
    });

    if (res.item2.isNotEmpty) {
      _key.currentState.showSnackBar(SnackBar(
        content: Text("خطا در دریافت اطلاعات شاعر: " + res.item2),
        backgroundColor: Colors.red,
      ));
    } else {
      setState(() {
        _poet = res.item1;
        _cat = null;
        _poem = null;
      });
    }
  }

  Future _loadCat(int id) async {
    setState(() {
      _isLoading = true;
    });
    var res = await GanjoorService().getCatById(id);
    setState(() {
      _isLoading = false;
    });

    if (res.item2.isNotEmpty) {
      _key.currentState.showSnackBar(SnackBar(
        content: Text("خطا در دریافت اطلاعات بخش: " + res.item2),
        backgroundColor: Colors.red,
      ));
    } else {
      setState(() {
        _cat = res.item1;
        _poem = null;
      });
    }
  }

  Future _loadPoem(int id) async {
    setState(() {
      _isLoading = true;
    });
    var res = await GanjoorService().getPoemById(id);
    setState(() {
      _isLoading = false;
    });

    if (res.item2.isNotEmpty) {
      _key.currentState.showSnackBar(SnackBar(
        content: Text("خطا در دریافت اطلاعات بخش: " + res.item2),
        backgroundColor: Colors.red,
      ));
    } else {
      setState(() {
        _poem = res.item1;
      });
    }
  }

  List<Widget> get _hierarchy {
    var parents = _cat.cat.ancestors
        .map((parent) => Row(children: [
              TextButton(
                  child: Text(
                    parent.title,
                    style: Theme.of(context)
                        .primaryTextTheme
                        .bodyText1
                        .copyWith(color: Theme.of(context).primaryColor),
                  ),
                  onPressed: () async {
                    if (_poet.cat.id == parent.id) {
                      setState(() {
                        _cat = null;
                      });
                    } else {
                      await _loadCat(parent.id);
                    }
                  }),
              Text(' » ')
            ]))
        .toList();
    parents.add(Row(children: [
      TextButton(
          child: Text(
            _cat.cat.title,
            style: Theme.of(context)
                .primaryTextTheme
                .bodyText1
                .copyWith(color: Theme.of(context).primaryColor),
          ),
          onPressed: () => null)
    ]));
    return parents;
  }

  List<Widget> get _contents {
    return _poem != null
        ? [
            Column(
              children: [
                Text(_poem.title,
                    style: Theme.of(context)
                        .primaryTextTheme
                        .bodyText1
                        .copyWith(color: Theme.of(context).primaryColor)),
                Image(
                  image: AssetImage(
                      'images/poets/' + _cat.poet.id.toString() + '.png'),
                  width: 82,
                  height: 100,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _hierarchy),
                Column(
                  children:
                      _poem.verses.map((verse) => Text(verse.text)).toList(),
                )
              ],
            )
          ]
        : _cat != null
            ? [
                Column(
                  children: [
                    Image(
                      image: AssetImage(
                          'images/poets/' + _cat.poet.id.toString() + '.png'),
                      width: 82,
                      height: 100,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: _hierarchy),
                    Column(
                        children: _cat.cat.children
                            .map(
                              (cat) => TextButton(
                                  child: Text(
                                    cat.title,
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .bodyText1
                                        .copyWith(
                                            color:
                                                Theme.of(context).primaryColor),
                                  ),
                                  onPressed: () async {
                                    await _loadCat(cat.id);
                                  }),
                            )
                            .toList()),
                    Column(
                      children: _cat.cat.poems
                          .map((poem) => TextButton(
                              child: Text(poem.title + ': ' + poem.excerpt,
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .bodyText1
                                      .copyWith(
                                          color:
                                              Theme.of(context).primaryColor)),
                              onPressed: () async {
                                await _loadPoem(poem.id);
                              }))
                          .toList(),
                    )
                  ],
                )
              ]
            : _poet != null
                ? [
                    Column(
                      children: [
                        Image(
                          image: AssetImage('images/poets/' +
                              _poet.poet.id.toString() +
                              '.png'),
                          width: 82,
                          height: 100,
                        ),
                        Text(_poet.poet.name,
                            style: Theme.of(context)
                                .primaryTextTheme
                                .bodyText1
                                .copyWith(
                                    color: Theme.of(context).primaryColor)),
                        Text(_poet.poet.description),
                        Column(
                            children: _poet.cat.children
                                .map(
                                  (cat) => TextButton(
                                      child: Text(
                                        cat.title,
                                        style: Theme.of(context)
                                            .primaryTextTheme
                                            .bodyText1
                                            .copyWith(
                                                color: Theme.of(context)
                                                    .primaryColor),
                                      ),
                                      onPressed: () async {
                                        await _loadCat(cat.id);
                                      }),
                                )
                                .toList()),
                        Column(
                          children: _poet.cat.poems
                              .map((poem) => TextButton(
                                  child: Text(poem.title + ': ' + poem.excerpt,
                                      style: Theme.of(context)
                                          .primaryTextTheme
                                          .bodyText1
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .primaryColor)),
                                  onPressed: () {}))
                              .toList(),
                        )
                      ],
                    )
                  ]
                : _poets
                    .map((poet) => Column(children: [
                          TextButton(
                            onPressed: () async {
                              _loadPoet(poet.id);
                            }, // handle your image tap here
                            child: Image(
                              image: AssetImage('images/poets/' +
                                  poet.id.toString() +
                                  '.png'),
                              width: 82,
                              height: 100,
                            ),
                          ),
                          TextButton(
                              onPressed: () async {
                                _loadPoet(poet.id);
                              },
                              child: Text(poet.name)),
                        ]))
                    .toList();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return ScaffoldMessenger(
        key: _key,
        child: LoadingOverlay(
            isLoading: _isLoading,
            child: Scaffold(
              appBar: AppBar(
                  // Here we take the value from the MyHomePage object that was created by
                  // the App.build method, and use it to set our appbar title.
                  title: Row(children: [
                IconButton(
                  icon: Icon(Icons.home),
                  tooltip: 'خانه',
                  onPressed: () {
                    setState(() {
                      _poet = null;
                      _cat = null;
                    });
                  },
                ),
                Text('گنجور')
              ])),
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
                    children: _contents,
                  ),
                ),
              ),
            )));
  }

  @override
  void afterFirstLayout(BuildContext context) async {
    await _loadPoets();
  }
}
