import 'package:flutter/material.dart';

class CardContainer extends StatefulWidget {
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
  _CardContainerState createState() => _CardContainerState();
}

class _CardContainerState extends State<CardContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: widget._child,
      margin: EdgeInsets.all(widget._margin),
      height: widget._height,
      width: widget._width,
      decoration: BoxDecoration(
        color: widget._color,
        borderRadius: BorderRadius.circular(widget._radius),
      ),
    );
  }
}
