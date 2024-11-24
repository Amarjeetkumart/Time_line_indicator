import 'package:flutter/material.dart';
import 'package:timeline/components/my_time_line.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: ListView(
          children: const [
            //start Timeline
            MyTimeLine(
              isFirst: true,
              isLast: false,
              isPast: true,
              eventCard: Text("First Event"),
            ),
            //middle Timeline
            MyTimeLine(
              isFirst: false,
              isLast: false,
              isPast: true,
              eventCard: Text("Second Event"),
            ),
            //end Timeline
            MyTimeLine(
              isFirst: false,
              isLast: true,
              isPast: false,
              eventCard: Text("Third Event"),
            ),
          ],
        ),
      ),
    );
  }
}
