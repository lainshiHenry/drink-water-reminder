import 'package:flutter/material.dart';

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
                  _currentValue.toStringAsFixed(2) + ' mL /',
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
