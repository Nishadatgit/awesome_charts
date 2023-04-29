import 'dart:math';

import 'package:chart_examples/utils/color.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomScatterChart extends StatelessWidget {
  const CustomScatterChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scatter'),
      ),
      body: Center(child: ScatterChartSample1()),
    );
  }
}

class ScatterChartSample1 extends StatefulWidget {
  ScatterChartSample1({super.key});

  final blue1 = Colors.blue.withOpacity(0.5);
  final blue2 = Colors.blue;

  @override
  State<StatefulWidget> createState() => ScatterChartSample1State();
}

class ScatterChartSample1State extends State<ScatterChartSample1> {
  final maxX = 50.0;
  final maxY = 50.0;
  final radius = 8.0;

  bool showFlutter = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          showFlutter = !showFlutter;
        });
      },
      child: AspectRatio(
        aspectRatio: 1.2,
        child: ScatterChart(
          ScatterChartData(
            scatterSpots: showFlutter ? flutterLogoData() : randomData(),
            minX: 0,
            maxX: maxX,
            minY: 0,
            maxY: maxY,
            borderData: FlBorderData(
              show: false,
            ),
            gridData: FlGridData(
              show: false,
            ),
            titlesData: FlTitlesData(
              show: false,
            ),
            scatterTouchData: ScatterTouchData(
              enabled: false,
            ),
          ),
          swapAnimationDuration: const Duration(milliseconds: 600),
          swapAnimationCurve: Curves.fastOutSlowIn,
        ),
      ),
    );
  }

  List<ScatterSpot> flutterLogoData() {
    return [
      /// section 1
      ScatterSpot(20, 14.5, color: widget.blue1, radius: radius),
      ScatterSpot(22, 16.5, color: widget.blue1, radius: radius),
      ScatterSpot(24, 18.5, color: widget.blue1, radius: radius),

      ScatterSpot(22, 12.5, color: widget.blue1, radius: radius),
      ScatterSpot(24, 14.5, color: widget.blue1, radius: radius),
      ScatterSpot(26, 16.5, color: widget.blue1, radius: radius),

      ScatterSpot(24, 10.5, color: widget.blue1, radius: radius),
      ScatterSpot(26, 12.5, color: widget.blue1, radius: radius),
      ScatterSpot(28, 14.5, color: widget.blue1, radius: radius),

      ScatterSpot(26, 8.5, color: widget.blue1, radius: radius),
      ScatterSpot(28, 10.5, color: widget.blue1, radius: radius),
      ScatterSpot(30, 12.5, color: widget.blue1, radius: radius),

      ScatterSpot(28, 6.5, color: widget.blue1, radius: radius),
      ScatterSpot(30, 8.5, color: widget.blue1, radius: radius),
      ScatterSpot(32, 10.5, color: widget.blue1, radius: radius),

      ScatterSpot(30, 4.5, color: widget.blue1, radius: radius),
      ScatterSpot(32, 6.5, color: widget.blue1, radius: radius),
      ScatterSpot(34, 8.5, color: widget.blue1, radius: radius),

      ScatterSpot(34, 4.5, color: widget.blue1, radius: radius),
      ScatterSpot(36, 6.5, color: widget.blue1, radius: radius),

      ScatterSpot(38, 4.5, color: widget.blue1, radius: radius),

      // /// section 2
      ScatterSpot(20, 14.5, color: widget.blue2, radius: radius),
      ScatterSpot(22, 12.5, color: widget.blue2, radius: radius),
      ScatterSpot(24, 10.5, color: widget.blue2, radius: radius),

      ScatterSpot(22, 16.5, color: widget.blue2, radius: radius),
      ScatterSpot(24, 14.5, color: widget.blue2, radius: radius),
      ScatterSpot(26, 12.5, color: widget.blue2, radius: radius),

      ScatterSpot(24, 18.5, color: widget.blue2, radius: radius),
      ScatterSpot(26, 16.5, color: widget.blue2, radius: radius),
      ScatterSpot(28, 14.5, color: widget.blue2, radius: radius),

      ScatterSpot(26, 20.5, color: widget.blue2, radius: radius),
      ScatterSpot(28, 18.5, color: widget.blue2, radius: radius),
      ScatterSpot(30, 16.5, color: widget.blue2, radius: radius),

      ScatterSpot(28, 22.5, color: widget.blue2, radius: radius),
      ScatterSpot(30, 20.5, color: widget.blue2, radius: radius),
      ScatterSpot(32, 18.5, color: widget.blue2, radius: radius),

      ScatterSpot(30, 24.5, color: widget.blue2, radius: radius),
      ScatterSpot(32, 22.5, color: widget.blue2, radius: radius),
      ScatterSpot(34, 20.5, color: widget.blue2, radius: radius),

      ScatterSpot(34, 24.5, color: widget.blue2, radius: radius),
      ScatterSpot(36, 22.5, color: widget.blue2, radius: radius),

      ScatterSpot(38, 24.5, color: widget.blue2, radius: radius),

      /// section 3
      ScatterSpot(10, 25, color: widget.blue2, radius: radius),
      ScatterSpot(12, 23, color: widget.blue2, radius: radius),
      ScatterSpot(14, 21, color: widget.blue2, radius: radius),

      ScatterSpot(12, 27, color: widget.blue2, radius: radius),
      ScatterSpot(14, 25, color: widget.blue2, radius: radius),
      ScatterSpot(16, 23, color: widget.blue2, radius: radius),

      ScatterSpot(14, 29, color: widget.blue2, radius: radius),
      ScatterSpot(16, 27, color: widget.blue2, radius: radius),
      ScatterSpot(18, 25, color: widget.blue2, radius: radius),

      ScatterSpot(16, 31, color: widget.blue2, radius: radius),
      ScatterSpot(18, 29, color: widget.blue2, radius: radius),
      ScatterSpot(20, 27, color: widget.blue2, radius: radius),

      ScatterSpot(18, 33, color: widget.blue2, radius: radius),
      ScatterSpot(20, 31, color: widget.blue2, radius: radius),
      ScatterSpot(22, 29, color: widget.blue2, radius: radius),

      ScatterSpot(20, 35, color: widget.blue2, radius: radius),
      ScatterSpot(22, 33, color: widget.blue2, radius: radius),
      ScatterSpot(24, 31, color: widget.blue2, radius: radius),

      ScatterSpot(22, 37, color: widget.blue2, radius: radius),
      ScatterSpot(24, 35, color: widget.blue2, radius: radius),
      ScatterSpot(26, 33, color: widget.blue2, radius: radius),

      ScatterSpot(24, 39, color: widget.blue2, radius: radius),
      ScatterSpot(26, 37, color: widget.blue2, radius: radius),
      ScatterSpot(28, 35, color: widget.blue2, radius: radius),

      ScatterSpot(26, 41, color: widget.blue2, radius: radius),
      ScatterSpot(28, 39, color: widget.blue2, radius: radius),
      ScatterSpot(30, 37, color: widget.blue2, radius: radius),

      ScatterSpot(28, 43, color: widget.blue2, radius: radius),
      ScatterSpot(30, 41, color: widget.blue2, radius: radius),
      ScatterSpot(32, 39, color: widget.blue2, radius: radius),

      ScatterSpot(30, 45, color: widget.blue2, radius: radius),
      ScatterSpot(32, 43, color: widget.blue2, radius: radius),
      ScatterSpot(34, 41, color: widget.blue2, radius: radius),

      ScatterSpot(34, 45, color: widget.blue2, radius: radius),
      ScatterSpot(36, 43, color: widget.blue2, radius: radius),

      ScatterSpot(38, 45, color: widget.blue2, radius: radius),
    ];
  }

  List<ScatterSpot> nishadData() {
    return [
      /// section 1
      ScatterSpot(17, 32, color: widget.blue2, radius: radius),
      ScatterSpot(10, 40, color: widget.blue2, radius: radius),
      ScatterSpot(10, 25, color: widget.blue2, radius: radius),
      ScatterSpot(10, 10, color: widget.blue2, radius: radius),
      ScatterSpot(10, 17, color: widget.blue2, radius: radius),
      ScatterSpot(10, 32, color: widget.blue2, radius: radius),

      ScatterSpot(10, 36, color: widget.blue2, radius: radius),
      ScatterSpot(10, 28.5, color: widget.blue2, radius: radius),
      ScatterSpot(10, 21, color: widget.blue2, radius: radius),

      ScatterSpot(10, 13.5, color: widget.blue2, radius: radius),

      ScatterSpot(25, 25, color: widget.blue2, radius: radius),

      ScatterSpot(40, 40, color: widget.blue2, radius: radius),
      ScatterSpot(40, 25, color: widget.blue2, radius: radius),
      ScatterSpot(32, 17, color: widget.blue2, radius: radius),
      ScatterSpot(40, 10, color: widget.blue2, radius: radius),
      ScatterSpot(40, 32, color: widget.blue2, radius: radius),
      ScatterSpot(40, 17, color: widget.blue2, radius: radius),
    ];
  }

  List<ScatterSpot> randomData() {
    const blue1Count = 21;
    const blue2Count = 57;
    return List.generate(blue1Count + blue2Count, (i) {
      Color color;
      if (i < blue1Count) {
        color = widget.blue1;
      } else {
        color = widget.blue2;
      }

      return ScatterSpot(
        (Random().nextDouble() * (maxX - 8)) + 4,
        (Random().nextDouble() * (maxY - 8)) + 4,
        color: color,
        radius: (Random().nextDouble() * 16) + 4,
      );
    });
  }
}

class RadarChartSample1 extends StatefulWidget {
  RadarChartSample1({super.key});

  final gridColor = Colors.purple.lighten(80);
  final titleColor = Colors.purple.lighten(80);
  final fashionColor = Colors.red;
  final artColor = Colors.cyan;
  final boxingColor = Colors.green;
  final entertainmentColor = Colors.white;
  final offRoadColor = Colors.yellow;

  @override
  State<RadarChartSample1> createState() => _RadarChartSample1State();
}

class _RadarChartSample1State extends State<RadarChartSample1> {
  int selectedDataSetIndex = -1;
  double angleValue = 0;
  bool relativeAngleMode = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Title configuration',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          Row(
            children: [
              const Text(
                'Angle',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              Slider(
                value: angleValue,
                max: 360,
                onChanged: (double value) => setState(() => angleValue = value),
              ),
              Checkbox(
                value: relativeAngleMode,
                onChanged: (v) => setState(() => relativeAngleMode = v!),
              ),
              const Text('Relative'),
            ],
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedDataSetIndex = -1;
              });
            },
            child: Text(
              'Categories'.toUpperCase(),
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: rawDataSets()
                .asMap()
                .map((index, value) {
                  final isSelected = index == selectedDataSetIndex;
                  return MapEntry(
                    index,
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedDataSetIndex = index;
                        });
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.symmetric(vertical: 2),
                        height: 26,
                        decoration: BoxDecoration(
                          color: isSelected ? Colors.blue : Colors.transparent,
                          borderRadius: BorderRadius.circular(46),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 6,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeInToLinear,
                              padding: EdgeInsets.all(isSelected ? 8 : 6),
                              decoration: BoxDecoration(
                                color: value.color,
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(width: 8),
                            AnimatedDefaultTextStyle(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInToLinear,
                              style: TextStyle(
                                color: isSelected ? value.color : widget.gridColor,
                              ),
                              child: Text(value.title),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                })
                .values
                .toList(),
          ),
          AspectRatio(
            aspectRatio: 1.3,
            child: RadarChart(
              RadarChartData(
                radarTouchData: RadarTouchData(
                  touchCallback: (FlTouchEvent event, response) {
                    if (!event.isInterestedForInteractions) {
                      setState(() {
                        selectedDataSetIndex = -1;
                      });
                      return;
                    }
                    setState(() {
                      selectedDataSetIndex = response?.touchedSpot?.touchedDataSetIndex ?? -1;
                    });
                  },
                ),
                dataSets: showingDataSets(),
                radarBackgroundColor: Colors.transparent,
                borderData: FlBorderData(show: false),
                radarBorderData: const BorderSide(color: Colors.transparent),
                titlePositionPercentageOffset: 0.2,
                titleTextStyle: TextStyle(color: widget.titleColor, fontSize: 14),
                getTitle: (index, angle) {
                  final usedAngle = relativeAngleMode ? angle + angleValue : angleValue;
                  switch (index) {
                    case 0:
                      return RadarChartTitle(
                        text: 'Mobile or Tablet',
                        angle: usedAngle,
                      );
                    case 2:
                      return RadarChartTitle(
                        text: 'Desktop',
                        angle: usedAngle,
                      );
                    case 1:
                      return RadarChartTitle(text: 'TV', angle: usedAngle);
                    default:
                      return const RadarChartTitle(text: '');
                  }
                },
                tickCount: 1,
                ticksTextStyle: const TextStyle(color: Colors.transparent, fontSize: 10),
                tickBorderData: const BorderSide(color: Colors.transparent),
                gridBorderData: BorderSide(color: widget.gridColor, width: 2),
              ),
              swapAnimationDuration: const Duration(milliseconds: 400),
            ),
          ),
        ],
      ),
    );
  }

  List<RadarDataSet> showingDataSets() {
    return rawDataSets().asMap().entries.map((entry) {
      final index = entry.key;
      final rawDataSet = entry.value;

      final isSelected = index == selectedDataSetIndex
          ? true
          : selectedDataSetIndex == -1
              ? true
              : false;

      return RadarDataSet(
        fillColor: isSelected ? rawDataSet.color.withOpacity(0.2) : rawDataSet.color.withOpacity(0.05),
        borderColor: isSelected ? rawDataSet.color : rawDataSet.color.withOpacity(0.25),
        entryRadius: isSelected ? 3 : 2,
        dataEntries: rawDataSet.values.map((e) => RadarEntry(value: e)).toList(),
        borderWidth: isSelected ? 2.3 : 2,
      );
    }).toList();
  }

  List<RawDataSet> rawDataSets() {
    return [
      RawDataSet(
        title: 'Fashion',
        color: widget.fashionColor,
        values: [
          300,
          50,
          250,
        ],
      ),
      RawDataSet(
        title: 'Art & Tech',
        color: widget.artColor,
        values: [
          250,
          100,
          200,
        ],
      ),
      RawDataSet(
        title: 'Entertainment',
        color: widget.entertainmentColor,
        values: [
          200,
          150,
          50,
        ],
      ),
      RawDataSet(
        title: 'Off-road Vehicle',
        color: widget.offRoadColor,
        values: [
          150,
          200,
          150,
        ],
      ),
      RawDataSet(
        title: 'Boxing',
        color: widget.boxingColor,
        values: [
          100,
          250,
          100,
        ],
      ),
    ];
  }
}

class RawDataSet {
  RawDataSet({
    required this.title,
    required this.color,
    required this.values,
  });

  final String title;
  final Color color;
  final List<double> values;
}
