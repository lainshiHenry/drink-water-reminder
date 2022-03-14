import 'package:flutter/material.dart';
import 'package:water_reminder/constants/data_constants.dart';
import 'package:water_reminder/widget/main_progress_bar.dart';
import 'package:water_reminder/widget/water_selection_bottom_sheet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double? _currentValue = 0;
  final double? _maxValue = maxWaterLimitmL;

  void recordWaterConsumed(double? amount) {
    setState(() {
      // if (_currentValue! < _maxValue!) {
      _currentValue = _currentValue! + amount!;
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            const Spacer(),
            MainProgressBar(currentValue: _currentValue!, maxValue: _maxValue!),
            const Spacer(),
            Row(children: [
              const Spacer(),
              ElevatedButton(
                child: const Icon(Icons.add),
                onPressed: () {
                  showWaterSelectionBottomSheet(context, recordWaterConsumed);
                },
              ),
              const Spacer(),
            ]),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
