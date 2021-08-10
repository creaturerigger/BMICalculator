import 'package:flutter/material.dart';
import 'card_container.dart';
import 'icon_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

enum Gender { Male, Female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? _selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedGender = Gender.Male;
                      });
                    },
                    child: CardContainer(
                      color: _selectedGender == Gender.Male
                          ? activeCardColour
                          : inactiveCardColour,
                      child: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedGender = Gender.Female;
                      });
                    },
                    child: CardContainer(
                      color: _selectedGender == Gender.Female
                          ? activeCardColour
                          : inactiveCardColour,
                      child: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: "FEMALE",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CardContainer(color: activeCardColour),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CardContainer(color: activeCardColour),
                ),
                Expanded(
                  child: CardContainer(color: activeCardColour),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
            child: Center(
              child: Text(
                'Calculate',
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
