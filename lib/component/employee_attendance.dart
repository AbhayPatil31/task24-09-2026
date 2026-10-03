import 'package:flutter/material.dart';
import 'package:test/component/circular_progress.dart';

class EmployeeAttendance extends StatelessWidget {
  final String title;
  final String number;

  const EmployeeAttendance({
    super.key,
    required this.number,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 72,

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.5),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ProgressWithNumber(progressValue: 0.75),
          ),
          const SizedBox(width: 24),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('• Present', style: const TextStyle(fontSize: 12)),
                  const SizedBox(width: 25),
                  Text('12', style: const TextStyle(fontSize: 12)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('• Absent', style: const TextStyle(fontSize: 12)),
                  const SizedBox(width: 25),
                  Text('7', style: const TextStyle(fontSize: 12)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('• On Leave', style: const TextStyle(fontSize: 12)),
                  const SizedBox(width: 25),
                  Text('3', style: const TextStyle(fontSize: 12)),
                ],
              ),
            ],
          ),
          SizedBox(width: 24),

          ///we can show graph here instead of text, but for now we will show text
          Text(
            'Graph area',
            style: const TextStyle(color: Colors.black54, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
