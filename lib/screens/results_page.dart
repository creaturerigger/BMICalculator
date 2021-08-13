import 'package:bmicalculator/components/bmi_calculate_button.dart';
import 'package:flutter/material.dart';
import 'package:bmicalculator/constants.dart';
import 'package:bmicalculator/components/card_container.dart';
import 'package:bmicalculator/resultspage_args.dart';

class ResultsPage extends StatelessWidget {
  static const kRouteName = '/results';

  const ResultsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as ResultPageArguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            child: CardContainer(
              color: kActiveCardColour,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    args.resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    args.bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    args.interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            flex: 5,
          ),
          Expanded(
            child: BMICalculateButton(
              buttonText: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
