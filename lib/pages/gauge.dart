import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:testing_app/components/constants.dart';

class SfRadialGaugeWidget extends StatelessWidget {
  const SfRadialGaugeWidget({
    Key key,
    @required this.bmiResult,
  }) : super(key: key);

  final double bmiResult;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      child: SfRadialGauge(
        axes: <RadialAxis>[
          RadialAxis(
            minimum: 0,
            maximum: 60,
            interval: 5,
            ranges: <GaugeRange>[
              GaugeRange(
                startValue: 0,
                endValue: 18.5,
                color: Color(0xFFc31336),
              ),
              GaugeRange(
                startValue: 18.5,
                endValue: 25,
                color: Color(0xFF1c08d4),
              ),
              GaugeRange(
                startValue: 25,
                endValue: 30,
                color: Color(0xFFb700ff),
              ),
              GaugeRange(
                startValue: 30,
                endValue: 60,
                color: Colors.red,
              ),
            ],
            pointers: <GaugePointer>[
              NeedlePointer(
                needleColor: Color(0xFF30f8f8),
                value: bmiResult,
                enableAnimation: true,
              ),
            ],
            annotations: <GaugeAnnotation>[
              GaugeAnnotation(
                widget: Text(
                  bmiResult.toStringAsFixed(1),
                  style: cResultNumberStyle,
                ),
                positionFactor: 0.8,
                angle: 90,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
