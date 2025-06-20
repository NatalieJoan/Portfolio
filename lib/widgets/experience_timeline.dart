import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ExperienceTimeline extends StatelessWidget {
  const ExperienceTimeline({super.key});

  @override
  Widget build(BuildContext context) {
    final entries = [
      _TimelineEntry(
        title: 'Teb Akademia',
        date: '2023 – 2024',
        subtitle: 'Internships in IT',
        icon: Icons.school,
      ),
      _TimelineEntry(
        title: 'Project – Coffee Website',
        date: '2024 – 2025',
        subtitle: 'UI/UX Designer',
        icon: Icons.coffee,
      ),
      _TimelineEntry(
        title: 'Engineer Project – Flutter App',
        date: '2024 – 2025',
        subtitle: 'UI/UX Designer & Flutter Dev',
        icon: Icons.phone_android,
      ),
      _TimelineEntry(
        title: 'Merito University',
        date: '2024 – currently',
        subtitle: 'PHP Developer',
        icon: Icons.code,
      ),
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(entries.length, (index) {
          final entry = entries[index];
          return SizedBox(
            width: 150,
            child: TimelineTile(
              axis: TimelineAxis.horizontal,
              alignment: TimelineAlign.center,
              isFirst: index == 0,
              isLast: index == entries.length - 1,
              indicatorStyle: IndicatorStyle(
                width: 36,
                height: 36,
                indicator: CircleAvatar(
                  backgroundColor: Color(0xFF6331C6),
                  child: Icon(entry.icon, size: 18, color: Colors.white),
                ),
              ),
              beforeLineStyle: const LineStyle(
                color: Colors.grey,
                thickness: 2,
              ),
              afterLineStyle: const LineStyle(color: Colors.grey, thickness: 2),
              startChild: Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Column(
                  children: [
                    Text(
                      entry.date,
                      style: Theme.of(
                        context,
                      ).textTheme.labelSmall?.copyWith(color: Colors.grey),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      entry.title,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      entry.subtitle,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

class _TimelineEntry {
  final String title;
  final String date;
  final String subtitle;
  final IconData icon;

  const _TimelineEntry({
    required this.title,
    required this.date,
    required this.subtitle,
    required this.icon,
  });
}
