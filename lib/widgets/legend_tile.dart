import 'package:expense_tracker_app/models/const.dart';
import 'package:flutter/material.dart';

class LegendTile extends StatelessWidget {
  final String text;
  final int index;
  const LegendTile({
    super.key,
    required this.text,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 5,
          backgroundColor: ConstantValue.colors[index],
        ),
        SizedBox(width: ConstantValue.size * .6),
        Text(
          text,
          style: Theme.of(context).textTheme.bodySmall,
        )
      ],
    );
  }
}
