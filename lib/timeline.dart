import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';
import 'package:intl/intl.dart';

class Timeline extends StatelessWidget {
  final int count;
  final int completedCount;
  final List<TimelineEvent> events;

  const Timeline({
    Key? key,
    required this.count,
    required this.completedCount,
    required this.events,
  }) : super(key: key);

  String _formatDateTime(DateTime dateTime) {
    return DateFormat('HH:mm, MMM dd yyyy').format(dateTime);
  }

  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: FixedTimeline(
        theme: TimelineThemeData(
          nodePosition: 0, // Adjust node position
          indicatorTheme: IndicatorThemeData(
            position: 0.04, // Adjust indicator position to match node
          ),
        ),
        children: List.generate(count, (index) {
          final event = events[index];
          return TimelineTile(
            contents: Padding(
              padding:
                  EdgeInsets.only(bottom: Height * 0.04, left: Height * 0.008),
              child: Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      event.title,
                      style: TextStyle(
                        fontSize: 15,
                        color:
                            index < completedCount ? Colors.green : Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    if (index < completedCount)
                      Text(
                        _formatDateTime(event.dateTime),
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black38,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                  ],
                ),
              ),
            ),
            node: TimelineNode(
              indicator: DotIndicator(
                size: 16,
                color: index < completedCount ? Colors.green : Colors.grey,
                child: index < completedCount
                    ? Icon(Icons.check, color: Colors.white, size: 12)
                    : null,
              ),
              startConnector: index == 0
                  ? null
                  : DashedLineConnector(
                      color:
                          index < completedCount ? Colors.green : Colors.grey,
                    ),
              endConnector: index == count - 1
                  ? null
                  : DashedLineConnector(
                      color: index < completedCount - 1
                          ? Colors.green
                          : Colors.grey,
                    ),
            ),
          );
        }),
      ),
    );
  }
}

class TimelineEvent {
  final String title;
  final DateTime dateTime;

  TimelineEvent({required this.title, required this.dateTime});
}
