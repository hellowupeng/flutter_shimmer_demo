import 'package:flutter/material.dart';
import 'package:shimmer_practice/shimmer_render.dart';

class Shimmer extends StatefulWidget {
  final Widget child;
  final Duration period;
  final Gradient gradient;

  Shimmer({Key key, this.child, this.period, this.gradient}) : super(key: key);

  _ShimmerState createState() => _ShimmerState();
}

class _ShimmerState extends State<Shimmer> with SingleTickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: widget.period)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.repeat();
        }
      });
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => ShimmerRenderObject(
        child: widget.child,
        gradient: widget.gradient,
        percent: controller.value,
      );
}
