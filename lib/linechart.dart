import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyLineChart extends StatelessWidget {
  const MyLineChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LineChart(
        LineChartData(
            maxY: 250,
            minX: 10,
            borderData: FlBorderData(show: false),
            titlesData: const FlTitlesData(
                bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                        showTitles: true, interval: 1, reservedSize: 40)),
                leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                        showTitles: true, interval: 50, reservedSize: 40)),
                topTitles: AxisTitles(
                    sideTitles: SideTitles(
                  showTitles: false,
                )),
                rightTitles: AxisTitles(
                    sideTitles: SideTitles(
                  showTitles: false,
                ))),
            gridData: const FlGridData(
                drawVerticalLine: false, horizontalInterval: 30),
            lineBarsData: [
              LineChartBarData(
                color: Colors.yellow,
                barWidth: 5,
                isCurved: true,
                belowBarData: BarAreaData(
                  show: true,
                  gradient: const LinearGradient(colors: [
                    Color.fromARGB(207, 212, 197, 60),
                    Color.fromARGB(32, 214, 198, 55)
                  ], begin: Alignment.topRight),
                ),
                spots: const [
                  FlSpot(10, 70),
                  FlSpot(11, 100),
                  FlSpot(12, 160),
                  FlSpot(13, 150),
                  FlSpot(14, 200),
                  FlSpot(15, 175),
                ],
              ),
            ]),
      ),
    );
  }
}
