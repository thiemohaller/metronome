import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class BpmSlider extends StatefulWidget {
  const BpmSlider({Key? key}) : super(key: key);

  @override
  State<BpmSlider> createState() => _BpmSliderState();
}

class _BpmSliderState extends State<BpmSlider> {
  double _currentBpmValue = 20;
  final double _maxBpmValue = 200;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NumberPicker(
          value: _currentBpmValue.round(),
          minValue: 0,
          maxValue: _maxBpmValue.round(),
          onChanged: (value) =>
              setState(() => _currentBpmValue = value.toDouble()),
        ),
        Container(
          width: double.maxFinite,
          padding: const EdgeInsets.all(25.0),
          alignment: Alignment.topCenter,
          child: Slider(
            value: _currentBpmValue,
            max: _maxBpmValue,
            min: 0,
            divisions: (_maxBpmValue / 10).round(),
            label: _currentBpmValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _currentBpmValue = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
