import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ShimmerFilter extends RenderProxyBox {
  final _clearPaint = Paint();
  final Paint _gradientPaint;
  final Gradient _gradient;
  double _percent;

  ShimmerFilter(this._gradient, this._percent)
      : _gradientPaint = Paint()..blendMode = BlendMode.srcIn;

  @override
  bool get alwaysNeedsCompositing => child != null;

  set percent(double newValue) {
    if (newValue != _percent) {
      _percent = newValue;
      markNeedsPaint();
    }
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    if (child == null) {
      return;
    }
    assert(needsCompositing);

    final width = child.size.width;
    final height = child.size.height;
    Rect rect;
    double dx, dy;

    dx = _offset(-width, width, _percent);
    dy = 0;
    rect = Rect.fromLTWH(offset.dx - width, offset.dy, 3 * width, height);

    _gradientPaint.shader = _gradient.createShader(rect);

    context.canvas.saveLayer(offset & child.size, _clearPaint);
    context.paintChild(child, offset);
    context.canvas.translate(dx, dy);
    context.canvas.drawRect(rect, _gradientPaint);
    context.canvas.restore();
  }

  double _offset(double start, double end, double percent) {
    return start + (end - start) * percent;
  }
}
