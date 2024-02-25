import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Clock extends StatelessWidget {
  const Clock({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: FutureBuilder(
        future: Future.delayed(
            Duration(milliseconds: 990 - DateTime.now().millisecond)),
        builder: (_, __) => StreamBuilder(
          stream: Stream.periodic(const Duration(seconds: 1)),
          builder: (context, snapshot) => Text(
              DateFormat('HH:mm:ss').format(DateTime.now()),
              style: const TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}
