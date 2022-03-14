import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _currentValue = 10;
  final double _maxValue = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            const Spacer(),
            MainProgressBar(currentValue: _currentValue, maxValue: _maxValue),
            const Spacer(),
            Row(children: [
              Spacer(),
              ElevatedButton(
                child: const Icon(Icons.add),
                // padding: EdgeInsets.all(17),
                onPressed: () {
                  setState(() {
                    if (_currentValue < _maxValue) {
                      _currentValue = _currentValue + 1;
                    }
                  });
                  print(_currentValue);
                },
              ),
              Spacer(),
            ]),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class MainProgressBar extends StatelessWidget {
  const MainProgressBar({
    Key? key,
    required double currentValue,
    required double maxValue,
  })  : _currentValue = currentValue,
        _maxValue = maxValue,
        super(key: key);

  final double _currentValue;
  final double _maxValue;

  @override
  Widget build(BuildContext context) {
    final double _calculatedValue = _currentValue / _maxValue;
    return Stack(
      children: [
        SizedBox(
          width: 200,
          height: 200,
          child: CircularProgressIndicator(
            value: _calculatedValue,
            strokeWidth: 40.0,
          ),
        ),
        SizedBox(
          width: 200,
          height: 200,
          child: Center(
            child: Column(
              children: [
                const Spacer(),
                Text(
                  (_calculatedValue * 100).toStringAsFixed(2) + '%',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Text(
                  _calculatedValue.toStringAsFixed(2) + ' mL /',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                Text(
                  _maxValue.toStringAsFixed(2) + ' mL',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
