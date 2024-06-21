import 'package:expense_tracker_app/models/const.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({
    super.key,
    required this.moneyFormat,
  });

  final NumberFormat moneyFormat;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '\u0024 ${moneyFormat.format(1234.98)}',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(
          height: ConstantValue.size * .3,
        ),
        Text(
          "Your Balance",
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
