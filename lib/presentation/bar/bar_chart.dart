import 'dart:math';

import 'package:chart_examples/presentation/bar/bar_chart1.dart';
import 'package:chart_examples/presentation/bar/bar_chart2.dart';
import 'package:chart_examples/presentation/bar/bar_chart3.dart';
import 'package:chart_examples/presentation/bar/bar_chart4.dart';
import 'package:chart_examples/utils/color.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CustomBarChart extends StatelessWidget {
  const CustomBarChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bar chart'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView(
          children: [
            BarChartSample1(),
            BarChartSample2(),
            const BarChartSample3(),
            BarChartSample4(),
          ]
              .animate(
                delay: 500.ms,
                interval: 500.ms,
              )
              .scale(
                  begin: const Offset(.5, .5), end: const Offset(1, 1), duration: 400.ms, curve: Curves.linearToEaseOut)
              .saturate(begin: 0, end: 1, delay: 400.ms),
        ),
      ),
    );
  }
}
