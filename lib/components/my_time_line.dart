import 'package:flutter/material.dart';
import 'package:timeline/components/event_card.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MyTimeLine extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final eventCard;

  const MyTimeLine({
    super.key,
    required this.isFirst,
    required this.isLast,
    required this.isPast,
    required this.eventCard,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //gap between events
      height: 200,

      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        //decorate TimeLine
        beforeLineStyle: LineStyle(
          color: isPast ? Colors.deepPurple : Colors.deepPurple.shade100,
        ),
        //decorate the icon
        indicatorStyle: IndicatorStyle(
          color: isPast ? Colors.deepPurple : Colors.deepPurple.shade100,
          width: 40,
          iconStyle: IconStyle(
            iconData: Icons.done,
            color: isPast ? Colors.white : Colors.deepPurple.shade100,
          ),
        ),
        //event card
        endChild: EventCard(
          isPast: isPast,
          child: eventCard,
        ),
      ),
    );
  }
}
