import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RodioB extends StatelessWidget {
  const RodioB({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
            value: "radio value",
            groupValue: "group value",
            fillColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return Colors.orange.withOpacity(.32);
              }
              return Colors.orange;
            }),
            onChanged: (value) {
              print(value); //selected value
            }),
        Text(
          name,
          style: TextStyle(fontSize: 20),
        )
      ],
    );
  }
}
