import 'package:flutter/material.dart';
//import 'package:bar/Subsser.dart';
import 'package:bar/subschart.dart';
import 'package:flutter/cupertino.dart';
import 'package:charts_flutter/flutter.dart' as charts;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class Subsser
{
  final String year;
  final int subscribers;
  //final charts.Color barColor;

  Subsser
  ({
    @required this.year,
    @required this.subscribers,
    //@required this.barColor,
  }

  );

}
class HomePage extends StatelessWidget
{
  static var ar = ["Pranav",100,"Satwik",170,"Sai Krishna",270,"Vardhan",240,"Sunny",300];
  final List<Subsser> data =
  [
    Subsser(
      year: ar[0],
      subscribers  : ar[1],
      //barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    Subsser(
      year: ar[2],
      subscribers  : ar[3],
      //barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    Subsser(
      year: ar[4],
      subscribers  : ar[5],
      //barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    Subsser(
      year: ar[6],
      subscribers  : ar[7],
      //barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    Subsser(
      year: ar[8],
      subscribers: ar[9]),

  ];
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      body: Center(
        child: Subschart(data: data,)
        ,),
    );
  }
}