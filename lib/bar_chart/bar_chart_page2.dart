import 'package:flutter/material.dart';
import 'package:hse/bar_chart/samples/bar_chart_sample1.dart';
import 'package:hse/bar_chart/samples/bar_chart_sample3.dart';
import 'package:hse/bar_chart/samples/bar_chart_sample4.dart';
import 'package:hse/bar_chart/samples/bar_chart_sample5.dart';

import 'samples/bar_chart_sample2.dart';

class BarChartPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: BarChartSample2(),
      ),
    );
  }
}
