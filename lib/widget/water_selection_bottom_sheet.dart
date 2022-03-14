import 'package:flutter/material.dart';

showWaterSelectionBottomSheet(BuildContext context, Function callbackFunction) {
  return showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (context) {
      return waterSelectionBottomSheet(context, callbackFunction);
    },
  );
}

Widget waterSelectionBottomSheet(
    BuildContext context, Function callbackFunction) {
  return Container(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.clear),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        Row(
          children: [
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                callbackFunction(250.0);
              },
              child: const Text('250mL'),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                callbackFunction(500.0);
              },
              child: const Text('500mL'),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                callbackFunction(1000.0);
              },
              child: const Text('1000 mL (1 L)'),
            ),
            const Spacer(),
          ],
        ),
      ],
    ),
  );
}
