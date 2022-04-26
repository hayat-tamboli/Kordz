/// Bar chart example
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

/// Example of a grouped bar chart with three series, each rendered with
/// different fill colors.
class GroupedFillColorBarChart extends StatelessWidget {
  const GroupedFillColorBarChart(
    this.seriesList, {
    Key? key,
    this.animate = true,
  }) : super(key: key);

  final List<charts.Series<dynamic, String>> seriesList;
  final bool animate;

  factory GroupedFillColorBarChart.withSampleData() {
    return GroupedFillColorBarChart(_createSampleData());
  }

  @override
  Widget build(BuildContext context) {
    return charts.BarChart(
      seriesList,
      animate: animate,
      // Configure a stroke width to enable borders on the bars.
      defaultRenderer: charts.BarRendererConfig(
        groupingType: charts.BarGroupingType.grouped,
        strokeWidthPx: 2.0,
        cornerStrategy: const charts.ConstCornerStrategy(6),
      ),
    );
  }

  /// Create series list with multiple series
  static List<charts.Series<GenreInterest, String>> _createSampleData() {
    final firstUser = [
      GenreInterest('Desi pop', 5),
      GenreInterest('modern\nbollywood', 25),
      GenreInterest('Filmi', 60),
      GenreInterest('pop', 75),
    ];

    final secondUser = [
      GenreInterest('Desi pop', 25),
      GenreInterest('modern\nbollywood', 50),
      GenreInterest('Filmi', 10),
      GenreInterest('pop', 20),
    ];

    return [
      // Blue bars with a lighter center color.
      charts.Series<GenreInterest, String>(
        id: 'firstUser',
        domainFn: (GenreInterest genre, _) => genre.genreName,
        measureFn: (GenreInterest genre, _) => genre.score,
        data: firstUser,
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
      ),
      // Solid red bars. Fill color will default to the series color if no
      // fillColorFn is configured.
      charts.Series<GenreInterest, String>(
        id: 'secondUser',
        measureFn: (GenreInterest genre, _) => genre.score,
        data: secondUser,
        colorFn: (_, __) => charts.MaterialPalette.deepOrange.shadeDefault,
        domainFn: (GenreInterest genre, _) => genre.genreName,
      ),
    ];
  }
}

/// Sample ordinal data type.
class GenreInterest {
  final String genreName;
  final int score;

  GenreInterest(this.genreName, this.score);
}
