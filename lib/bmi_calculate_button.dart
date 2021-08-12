import 'package:flutter/material.dart';
import 'constants.dart';

class BMICalculateButton extends StatelessWidget {
  final String buttonText;
  final void Function() onTap;

  BMICalculateButton({required this.buttonText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.only(
          top: 10.0,
        ),
        padding: EdgeInsets.only(
          bottom: 20.0,
        ),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            buttonText,
            style: kButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
