import 'package:bmr_calculator/widgets/calculate_button.dart';
import 'package:bmr_calculator/widgets/circular_card.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.bmrResult, required this.icon});

  final String bmrResult;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMR CALCULATOR",
          style: kTitleTextStyle,
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 6,
            child: CircularCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "BMR RESULT",
                    style: kResultLabelTextStyle,
                  ),
                  Text(
                    bmrResult.toString(),
                    style: kResultTextStyle,
                  ),
                  const Text(
                    "CALORIES / DAY",
                    style: kResultSmallTextStyle,
                  ),
                  Icon(
                    icon,
                    size: 120,
                    color: kButtonColor,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: CalculateButton(
                title: "RE-CALCULATE",
                onTap: () {
                  Navigator.pop(context);
                }),
          ),
        ],
      ),
    );
  }
}
