import 'package:flutter/material.dart';

class ProgressWithNumber extends StatelessWidget {
  final double progressValue;

  const ProgressWithNumber({super.key, required this.progressValue});

  @override
  Widget build(BuildContext context) {
    final int percentage = (progressValue * 100).toInt();

    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: 64,
          height: 100,
          child: CircularProgressIndicator(
            value: progressValue,
            strokeWidth: 8,
            backgroundColor: Colors.grey[200],
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
          ),
        ),
        Text(
          '$percentage%',
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
