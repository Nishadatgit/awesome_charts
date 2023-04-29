import 'package:chart_examples/presentation/bar/bar_chart.dart';
import 'package:chart_examples/presentation/line/line_chart.dart';
import 'package:chart_examples/presentation/pie/pie_chart.dart';
import 'package:chart_examples/presentation/scatter/scatter_chart.dart';
import 'package:chart_examples/utils/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        titleTextStyle: Theme.of(context).textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.bold),
        title: const Text('Charts'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: SizedBox(
              height: size.height * .5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, mainAxisSpacing: 22, crossAxisSpacing: 22),
                  children: [
                    buildChartTile(
                      context,
                      icons[0],
                      titles[0],
                      iconColors[0],
                      () {
                        Navigator.push(
                          context,
                          customSlidingTransition(
                            const CustomBarChart(),
                          ),
                        );
                      },
                      'test',
                    ),
                    buildChartTile(
                      context,
                      icons[1],
                      titles[1],
                      iconColors[1],
                      () {
                        Navigator.push(context, customSlidingTransition(const CustomLineChart()));
                      },
                      'test',
                    ),
                    buildChartTile(
                      context,
                      icons[2],
                      titles[2],
                      iconColors[2],
                      () {
                        Navigator.push(context, customSlidingTransition(CustomPieChart()));
                      },
                      'test',
                    ),
                    buildChartTile(
                      context,
                      icons[3],
                      titles[3],
                      iconColors[3],
                      () {
                        Navigator.push(context, customSlidingTransition(const CustomScatterChart()));
                      },
                      'test',
                    )
                  ]
                      .animate(interval: 600.ms)
                      .fadeIn(duration: 900.ms, delay: 300.ms)
                      .shimmer(blendMode: BlendMode.srcOver, color: Colors.white12),
                ),
              ),
            ),
          )),
    );
  }

  PageRouteBuilder<dynamic> customSlidingTransition(Widget screen) {
    return PageRouteBuilder(
      transitionDuration: 500.ms,
      reverseTransitionDuration: 500.ms,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final position = Tween<Offset>(begin: const Offset(0, 2), end: const Offset(0, 0))
            .animate(CurvedAnimation(parent: animation, curve: Curves.linearToEaseOut));
        return Align(
          alignment: Alignment.bottomCenter,
          child: FadeTransition(
            opacity: animation,
            child: SlideTransition(
              position: position,
              child: ScaleTransition(
                scale: animation,
                child: child,
              ),
            ),
          ),
        );
      },
      pageBuilder: (context, animation, secondaryAnimation) {
        return screen;
      },
    );
  }

  Widget buildChartTile(
      BuildContext context, IconData icon, String title, Color iconColor, VoidCallback onTap, String toolTip) {
    return Card(
      color: Colors.grey[900],
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: InkWell(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: iconColor,
                size: 40,
              ),
              const SizedBox(height: 5),
              Text(title)
            ],
          ),
        ),
      ),
    );
  }
}
