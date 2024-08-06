import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatelessWidget {
  const IncomeChart({super.key});

  @override
  Widget build(BuildContext context) {
    return PieChart(getChartData());
  }

  PieChartData getChartData() {
    return PieChartData(sections: [
      PieChartSectionData(
        value: 40,
        showTitle: false,
        color: const Color(0xFF208CC8),
      ),
      PieChartSectionData(
          value: 25, showTitle: false, color: const Color(0xFF4EB7F2)),
      PieChartSectionData(
          value: 20, showTitle: false, color: const Color(0xFF064061)),
      PieChartSectionData(
          value: 22, showTitle: false, color: const Color(0xFFE2DECD))
    ]);
  }
}
