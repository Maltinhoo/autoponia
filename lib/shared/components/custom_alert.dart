import 'package:flutter/material.dart';

import 'common_button.dart';

customAlert(
    {required BuildContext context,
    required BoxConstraints constraints,
    required String title,
    required String text1,
    required String text2,
    required Function() function,
    required Function() secondFunction}) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CommonButton(
                      text: text1,
                      function: function,
                      constraints: constraints,
                    ),
                    SizedBox(width: 8),
                    CommonButton(
                        text: text2,
                        function: secondFunction,
                        constraints: constraints)
                  ],
                ),
              ],
            ));
      });
}
