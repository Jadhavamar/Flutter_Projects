

import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class piechart extends StatefulWidget{
  const piechart({super.key});

  @override
   State<piechart> createState() => _piechartState();
}
class _piechartState extends State<piechart> {
  Map<String, double> data = {
    "Food":20,
    "movies":10,
    "Entertaiment":40,
  };

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Graph"
        ),
        ),
        body: Center(
          child: PieChart(
            dataMap:data,
            animationDuration:  Duration(milliseconds: 2000),
            chartType: ChartType.ring,
            chartRadius: 200,
            ringStrokeWidth: 100,
            centerText: "Total",
            chartValuesOptions: const ChartValuesOptions(
              showChartValuesInPercentage: true,
            ),
            legendOptions: const LegendOptions(
              legendPosition: LegendPosition.bottom,
              legendShape: BoxShape.rectangle,
              showLegends: false,
          ),
        ),
      ),  
    );
  }
}