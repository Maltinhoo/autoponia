import 'package:flutter/material.dart';

class OptionsDrawer extends StatelessWidget {
  final BoxConstraints constraints;
  final String label;
  final Function() function;
  const OptionsDrawer({
    Key? key,
    required this.constraints,
    required this.label,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: SizedBox(
        height: constraints.maxHeight * .10,
        child: Card(
          elevation: 5,
          shadowColor: Colors.black,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(label),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
