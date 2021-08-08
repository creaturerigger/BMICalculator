import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  final double _margin;
  final double? _height;
  final double? _width;
  final Color _color;
  final double _radius;
  final Widget? _child;
  const CardContainer({
    Widget? child,
    double margin = 15.0,
    double? height,
    double? width,
    Color color = const Color(0xFFFFFFFF),
    double radius = 10.0,
  })  : _child = child,
        _margin = margin,
        _height = height,
        _width = width,
        _color = color,
        _radius = radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _child,
      margin: EdgeInsets.all(_margin),
      height: _height,
      width: _width,
      decoration: BoxDecoration(
        color: _color,
        borderRadius: BorderRadius.circular(_radius),
      ),
    );
  }
}
