import 'package:flutter/material.dart';

import 'bpm_slider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Material Metronome';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      color: Colors.green,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const BpmSlider(),
      ),
    );
  }
}
