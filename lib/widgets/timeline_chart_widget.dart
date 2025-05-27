import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class TimelineChartWidget extends StatelessWidget {
  const TimelineChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
     return SizedBox(
      height: 200,
      width: MediaQuery.of(context).size.width * 0.5,
      child: LineChart(
        LineChartData(
          minX: 2023,
          maxX: 2025,
          minY: 0,
          maxY: 1,
          lineTouchData: LineTouchData(
            touchTooltipData: LineTouchTooltipData(
              getTooltipItems: (touchedSpots) {
                return touchedSpots.map((spot) {
                  String label = '';
                  switch (spot.x.toInt()) {
                    case 2023.4:
                      label = 'Teb Akademia | Internship in IT';
                      break;
                    case 2024.6:
                      label = 'Project - Coffee website | UI/UX Designer';
                      break;
                    case 2024.9:
                      label = 'Engineer Project - Flutter mobile app \n UI/UX Designer & Flutter Developer';
                      break;
                    case 2025:
                      label = 'Centrum Rozwoju Szkół Wyższych Merito | PHP Developer';
                      break;
                  }
                  return LineTooltipItem(label, TextStyle(color: Colors.white));
                }).toList();
              },
            ),
          ),
          titlesData: FlTitlesData(
            leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                interval: 1,
                getTitlesWidget: (value, meta) {
                  return Text(value.toInt().toString());
                },
              ),
            ),
          ),
          gridData: FlGridData(show: false),
          borderData: FlBorderData(show: false),
          lineBarsData: [
            LineChartBarData(
              isCurved: false,
              spots: [
                FlSpot(2023, 0.5),
                FlSpot(2023.4, 0.5),
                FlSpot(2024.6, 0.5),
                FlSpot(2024.9, 0.5),
                FlSpot(2025, 0.5),
              ],
              dotData: FlDotData(show: true),
              isStrokeCapRound: true,
              barWidth: 8,
              color: Colors.white
            ),
          ],
        ),
      ),
    );
  }
}