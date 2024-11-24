import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final bool isPast;
  final child;
  const EventCard({
    required this.isPast,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: isPast ? Colors.deepPurple[300] : Colors.purple[100],
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
