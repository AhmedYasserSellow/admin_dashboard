import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  List<PieChartSectionData> _sections() => [
        PieChartSectionData(
          radius: _activeIndex == 0 ? 28 : 24,
          showTitle: false,
          value: 22,
          color: const Color(0xffE2DECD),
        ),
        PieChartSectionData(
          radius: _activeIndex == 1 ? 28 : 24,
          showTitle: false,
          value: 20,
          color: const Color(0xff064061),
        ),
        PieChartSectionData(
          radius: _activeIndex == 2 ? 28 : 24,
          showTitle: false,
          value: 25,
          color: const Color(0xff4EB7F2),
        ),
        PieChartSectionData(
          radius: _activeIndex == 3 ? 28 : 24,
          showTitle: false,
          value: 40,
          color: const Color(0xff208CC8),
        ),
      ];
  int? _activeIndex;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(),
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, touchResponse) {
          _activeIndex = touchResponse!.touchedSection!.touchedSectionIndex;
          setState(() {});
        },
      ),
      sections: _sections(),
    );
  }
}
