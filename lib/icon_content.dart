import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

class IconContent extends StatelessWidget {
  final IconData _icon;
  final String _label;

  IconContent({required IconData icon, required String label})
      : _icon = icon,
        _label = label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          _icon,
          size: 80.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          _label,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
