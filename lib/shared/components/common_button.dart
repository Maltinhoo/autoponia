import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final String text;
  final Function() function;
  final BoxConstraints constraints;
  final Color? color;
  const CommonButton(
      {Key? key,
      required this.text,
      required this.function,
      required this.constraints,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function,
      child: Text(
        text,
      ),
      style: ElevatedButton.styleFrom(primary: color),
    );
  }
}
