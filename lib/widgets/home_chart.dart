import 'package:expense_tracker_app/models/chartdata.dart';
import 'package:expense_tracker_app/models/const.dart';
import 'package:expense_tracker_app/widgets/legend_tile.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomeChart extends StatelessWidget {
  HomeChart({super.key});

  final List<ChartData> data = [
    ChartData(x: '', y: 25),
    ChartData(x: 'Steve', y: 38),
    ChartData(x: 'Jack', y: 34),
    ChartData(x: 'Others', y: 52),
    ChartData(x: 'Others', y: 52)
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: ConstantValue.size * 2),
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(ConstantValue.size * .7),
      ),
      child: SfCircularChart(
        margin: EdgeInsets.all(ConstantValue.size * 0),
        legend: getLegends(),
        palette: ConstantValue.colors,
        centerX: '40%',
        series: <CircularSeries<ChartData, String>>[
          DoughnutSeries(
            radius: '80%',
            innerRadius: '60%',
            dataSource: data,
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y,
          ),
        ],
      ),
    );
  }

  Legend getLegends() {
    return Legend(
      itemPadding: 3,
      padding: 0,
      isResponsive: true,
      position: LegendPosition.right,
      alignment: ChartAlignment.center,
      isVisible: true,
      legendItemBuilder: (legendText, series, point, seriesIndex) =>
          LegendTile(text: legendText, index: seriesIndex),
    );
  }
}
