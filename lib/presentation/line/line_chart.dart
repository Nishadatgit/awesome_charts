import 'package:chart_examples/presentation/line/line_chart1.dart';
import 'package:chart_examples/presentation/line/line_chart2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CustomLineChart extends StatelessWidget {
  const CustomLineChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Line chart'),
        ),
        body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                  child: Text(
                    'Single Line',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                const LineChartSample1(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                  child: Text(
                    'Double Line',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                LineChartSample2(),
              ]
                  .animate(
                    
                    delay: 500.ms,
                    interval: 500.ms,
                  )
                  .scale(
                      begin: const Offset(.2, .3),
                      end: const Offset(1, 1),
                      duration: 300.ms,
                      curve: Curves.linearToEaseOut)
                  .blur(begin: const Offset(.5, .3), end: const Offset(0, 0), delay: 300.ms)),
        ));
  }
}
