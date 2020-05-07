import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'main.dart';

class Subschart extends StatelessWidget
{
  final List<Subsser> data;

  Subschart({@required this.data});
  @override
  Widget build(BuildContext context)
  {
   // var i = 0;
  //var ar = ['jdsh','dfkjs','fdkjb','fdjb','djkf','fjkhv','dvj','dfjv','dkjf'];
    List<charts.Series<Subsser,String>> series=
    [
      charts.Series
      (
        id : "subscribers",
        data : data,
        domainFn: (Subsser series,_) =>
        series.year,
        measureFn: (Subsser series,_) =>
        series.subscribers,
        colorFn: (Subsser series,_) =>
        charts.ColorUtil.fromDartColor(Colors.blue),
        
      ),
      
    ];
    return Container
    (
      height: 400,
      padding: EdgeInsets.all(20),
      child: Card(
        child : Padding
        (
          padding: const EdgeInsets.all(8.0),
        child: Column(children: <Widget>
        [
          Text
          (
            "Bar Graph",
            style: Theme.of(context).textTheme.body2,
          ),
          Expanded
          (child: charts.BarChart(series,animate: true,),),
        ],),

      ),
      )
    );
  }
}