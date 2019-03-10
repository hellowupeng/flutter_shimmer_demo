import 'package:flutter/material.dart';
import 'package:shimmer_practice/shimmer_filter.dart';

class ShimmerRenderObject extends SingleChildRenderObjectWidget {
  final Gradient gradient;
  final double percent;

  ShimmerRenderObject({Widget child, this.gradient, this.percent});

  @override
  RenderObject createRenderObject(BuildContext context) =>
      ShimmerFilter(gradient, percent);

  @override
  void updateRenderObject(BuildContext context, ShimmerFilter shimmerFilter) =>
      shimmerFilter.percent = percent;
}
