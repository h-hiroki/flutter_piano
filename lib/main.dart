import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_midi/flutter_midi.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    FlutterMidi.unmute();
    rootBundle.load('assets/sound/Piano.sf2').then((sf2) {
      FlutterMidi.prepare(sf2: sf2, name: 'Piano.sf2');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Piano'),),
        drawer: Drawer(child: SafeArea(child: ListView(children: <Widget>[]))),
        body: ListView.builder(
          itemCount: 7,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Container();
          },
        ),
      ),
    );
  }
}
